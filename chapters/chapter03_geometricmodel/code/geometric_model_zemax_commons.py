# -*- coding: utf-8 -*-
#-------------------------------------------------------------------------------
# Name:          geometric_model_zemax_commons.py
# Purpose:       common (across multiple notebooks residing in the same directory) 
#                python functions for geometric modeling with Zemax
#
# Author:        Indranil Sinharoy
#
# Copyright:     (c) Indranil Sinharoy 2015
# License:       MIT License
#-------------------------------------------------------------------------------
'''utility functions for geometric optics calculations using zemax. wavelength 
   assumed is 0.55 mu  
'''
from __future__ import division, print_function
import os
import numpy as np
import collections as co
import pyzdde.zdde as pyz
import pyzdde.arraytrace as at 
import matplotlib.pyplot as plt  


#%% Basic geometric-optics functions
def gaussian_lens_formula(u=None, v=None, f=None, infinity=10e20):
    """return the third value of the Gaussian lens formula, given any two

    Parameters
    ----------
    u : float, optional
        object distance from first principal plane. 
    v : float, optional
        image distance from rear principal plane 
    f : float, optional
        focal length
    infinity : float
        numerical value to represent infinity (default=10e20)

    Returns
    -------
    glfParams : namedtuple
        named tuple containing the Gaussian Lens Formula parameters

    Notes
    ----- 
    Both object and image distances are considered positive.   

    Examples
    --------
    >>> gaussian_lens_formula(u=30, v=None, f=10)
    glfParams(u=30, v=15.0, f=10)
    >>> gaussian_lens_formula(u=30, v=15)
    glfParams(u=30, v=15, f=10.0)
    >>> gaussian_lens_formula(u=1e20, f=10)
    glfParams(u=1e+20, v=10.0, f=10)
    """
    glfParams = co.namedtuple('glfParams', ['u', 'v', 'f'])
    def unknown_distance(knownDistance, f):
        try: 
            unknownDistance = (knownDistance * f)/(knownDistance - f)
        except ZeroDivisionError:
            unknownDistance = infinity 
        return unknownDistance

    def unknown_f(u, v):
        return (u*v)/(u+v)

    if sum(i is None for i in [u, v, f]) > 1:
        raise ValueError('At most only one parameter can be None')

    if f is None:
        if not u or not v:
            raise ValueError('f cannot be determined from input')
        else:
            f = unknown_f(u, v)
    else:
        if u is None:
            u = unknown_distance(v, f)
        else:
            v = unknown_distance(u, f)
    return glfParams(u, v, f)


#%% Helper functions to draw the cardinal and pupil planes
def set_surface_semidia(ln, surf, value=0):
    """set the surface `surf` semi-diameter to value. 

    This requires a special function because we need to first set 
    the solve on the semi-diameter to 'fixed', else Zemax will automatically
    modify it.  

    Parameters
    ---------- 
    ln : object 
        pyzdde object 
    surf : integer
        surface number 

    Returns
    ------- 
    None
    """
    ln.zSetSolve(surf, ln.SOLVE_SPAR_SEMIDIA, ln.SOLVE_SEMIDIA_FIXED)
    ln.zSetSurfaceData(surfNum=surf, code=ln.SDAT_SEMIDIA, value=value)

def insert_dummy_surface(ln, surf, thickness=0, semidia=0, comment='dummy'):
    """helper function to insert dummy surface 

    Parameters
    ---------- 
    ln : object 
        pyzdde object 
    surf : integer
        surface number at which to insert the dummy surface 
    thickness : real, optional
        thickness of the surface 
    semidia : real, optional 
        semi diameter of the surface 
    comment : string, optional
        comment on the surface 
    """
    ln.zInsertSurface(surf)
    ln.zSetSurfaceData(surf, ln.SDAT_COMMENT, comment)
    ln.zSetSurfaceData(surf, ln.SDAT_THICK, thickness)
    set_surface_semidia(ln, surf, semidia)


def draw_plane(ln, space='img', dist=0, surfName=None, semiDia=None):
    """function to draw planes at the points specified by "dist"
    
    Parameters
    ----------
    ln : pyzdde object
        active link object
    space : string (`img` or `obj`), optional
        image space or object space in which the plane is specified. 'img' for 
        image space, 'obj' for object space. This info is required because 
        Zemax returns distances that are measured w.r.t. surface 1 (@LDE) in 
        object space, and w.r.t. IMG in image space. See the Assumptions.
    dist : float, optional
        distance along the optical axis of the plane from surface 2 (@LDE) if 
        `space` is `obj` else from the IMG surface. This assumes that surface 1
        is a dummy surface
    surfName : string, optional
        name to identify the surf in the LDE, added to the comments column
    semiDia : real, optional
        semi-diameter of the surface to set 
        
    Returns
    -------
    None
    
    Assumptions (important to read)
    -------------------------------
    The function assumes (for the purpose of this study) that surface 1 @ LDE is 
    a dummy surface at certain distance preceding the first actual lens surface. 
    This enables the rays entering the lens to be visible in the Zemax layout 
    plots even if the object is at infinity. So the function inserts the planes 
    (and their associated dummy surfaces) beginning at surface 2.
    """
    numSurf = ln.zGetNumSurf()
    inSurfPos = numSurf if space=='img' else 2 # assuming that the first surface will be a dummy surface
    insert_dummy_surface(ln, inSurfPos, dist, 0, 'dummy')
    ln.zInsertSurface(inSurfPos+1)
    ln.zSetSurfaceData(inSurfPos+1, ln.SDAT_COMMENT, surfName)
    if semiDia:
        set_surface_semidia(ln, inSurfPos+1, semiDia)
    thickSolve, pickupSolve = 1, 5
    frmSurf, scale, offset, col = inSurfPos, -1, 0, 0
    ln.zSetSolve(inSurfPos+1, thickSolve, pickupSolve, frmSurf, scale, offset, col)

def get_cardinal_points(ln):
    """Returns the distances of the cardinal points (along the optical axis)
    
    Parameters
    ----------
    ln : object
        PyZDDE object
    
    Returns
    -------
    fpObj : float
        distance of object side focal point from surface 1 in the LDE, 
        irrespective of which surface is defined as the global reference  
    fpImg : float
        distance of image side focal point from IMG surface
    ppObj : float
        distance of the object side principal plane from surface 1 in the 
        LDE, irrespective of which surface is defined as the global 
        reference surface 
    ppImg : float
        distance of the image side principal plane from IMG
    
    Notes
    -----
    1. The data is consistant with the cardinal data in the Prescription file
       in which, the object side data is with respect to the first surface in the LDE. 
    2. If there are more than one wavelength, then the distances are averaged.  
    """
    zmxdir = os.path.split(ln.zGetFile())[0]
    textFileName = os.path.join(zmxdir, "tmp.txt") 
    sysProp = ln.zGetSystem()
    numSurf = sysProp.numSurf
    ln.zGetTextFile(textFileName, 'Pre', "None", 0)
    line_list = pyz._readLinesFromFile(pyz._openFile(textFileName))
    ppObj, ppImg, fpObj, fpImg = 0.0, 0.0, 0.0, 0.0
    count = 0
    for line_num, line in enumerate(line_list):
        # Extract the Focal plane distances
        if "Focal Planes" in line:
            fpObj += float(line.split()[3])
            fpImg += float(line.split()[4])
        # Extract the Principal plane distances.
        if "Principal Planes" in line and "Anti" not in line:
            ppObj += float(line.split()[3])
            ppImg += float(line.split()[4])
            count +=1  #Increment (wavelength) counter for averaging
    # Calculate the average (for all wavelengths) of the principal plane distances
    # This is only there for extracting a single point ... ideally the design
    # should have just one wavelength define!
    if count > 0:
        fpObj = fpObj/count
        fpImg = fpImg/count
        ppObj = ppObj/count
        ppImg = ppImg/count
    # # Delete the temporary file
    pyz._deleteFile(textFileName)
    cardinals = co.namedtuple('cardinals', ['Fo', 'Fi', 'Ho', 'Hi'])
    return cardinals(fpObj, fpImg, ppObj, ppImg)
      
def draw_pupil_cardinal_planes(ln, firstDummySurfOff=40, cardinalSemiDia=1.2, push=True):
    """Insert paraxial pupil and cardinal planes surfaces in the LDE for rendering in
    layout plots.
    
    Parameters
    ----------
    ln : object
        pyzdde object
    firstDummySurfOff : float, optional 
        the thickness of the first dummy surface. This first dummy surface is 
        inserted by this function. See Notes.
    cardinalSemiDia : float, optional 
        semidiameter of the cardinal surfaces. (Default=1.2) 
    push : bool
        push lens in the DDE server to the LDE
        
    Assumptions
    -----------
    The function assumes that the lens is already focused appropriately,
    for either finite or infinite conjugate imaging. 
    
    Notes
    -----
    1. 'first dummy surface' is a dummy surface in LDE position 1 (between the 
        OBJ and the actual first lens surface) whose function is show the input 
        rays to the left of the first optical surface.
    2. The cardinal and pupil planes are drawn using standard surfaces in the LDE. 
       To ensure that the ray-tracing engine does not treat these surfaces as real 
       surfaces, we need to instruct Zemax to "ignore" rays to these surfaces. 
       Unfortunately, we cannot do it programmatically. So, after the planes have 
       been drawn, we need to manually do the following:
           1. 2D Layout settings
               a. Set number of rays to 1 or as needed
           2. For the pupil (ENPP and EXPP) and cardinal surfaces (H, H', F, F'), 
              and the dummy surfaces (except for the dummy surface named "dummy 2 
              c rays" go to "Surface Properties" >> Draw tab
               a. Select "Skip rays to this surface" 
           3. Set field points to be symmetric about the optical axis
    3. For clarity, the semi-diameters of the dummy sufaces are set to zero.
    """
    ln.zSetWave(0, 1, 1)
    ln.zSetWave(1, 0.55, 1)
    # insert dummy surface at 1 for showing the input ray
    ln.zRemoveVariables()
    # before inserting surface check to see if the object is at finite 
    # distance. If the object is at finite distance, inserting a dummy 
    # surface with finite thickness will change the image plane distance.
    # so first decrease the thickness of the object surface by the 
    # thickness of the dummy surface
    objDist = ln.zGetSurfaceData(surfNum=0, code=ln.SDAT_THICK)
    assert firstDummySurfOff < objDist, ("dummy surf. thick ({}) must be < "
                                         "than obj dist ({})!".format(firstDummySurfOff, objDist))
    if objDist < 1.0E+10:
        ln.zSetSurfaceData(surfNum=0, code=ln.SDAT_THICK, value=objDist - firstDummySurfOff)
    
    insert_dummy_surface(ln, surf=1, thickness=firstDummySurfOff, semidia=0, comment='dummy 2 c rays')
    ln.zGetUpdate()
    # Draw Exit and Entrance pupil planes
    print("Textual information about the planes:\n")
    expp = ln.zGetPupil().EXPP
    print("Exit pupil distance from IMG:", expp)
    draw_plane(ln, 'img', expp, "EXPP")
    
    enpp = ln.zGetPupil().ENPP
    print("Entrance pupil from Surf 1 @ LDE:", enpp)
    draw_plane(ln, 'obj', enpp - firstDummySurfOff, "ENPP")

    # Get and draw the Principal planes
    fpObj, fpImg, ppObj, ppImg = get_cardinal_points(ln)

    print("Focal plane obj F from surf 1 @ LDE: ", fpObj, "\nFocal plane img F' from IMA: ", fpImg)
    draw_plane(ln,'img', fpImg, "F'", cardinalSemiDia)
    draw_plane(ln,'obj', fpObj - firstDummySurfOff, "F", cardinalSemiDia)
    
    print("Principal plane obj H from surf 1 @ LDE: ", ppObj, "\nPrincipal plane img H' from IMA: ", ppImg)
    draw_plane(ln,'img', ppImg, "H'", cardinalSemiDia)
    draw_plane(ln,'obj', ppObj - firstDummySurfOff, "H", cardinalSemiDia)

    # Check the validity of the distances
    ppObjToEnpp = ppObj - enpp
    ppImgToExpp = ppImg - expp
    focal = ln.zGetFirst().EFL
    print("Focal length: ", focal)
    print("Principal plane H to ENPP: ", ppObjToEnpp)
    print("Principal plane H' to EXPP: ", ppImgToExpp)
    v = gaussian_lens_formula(u=ppObjToEnpp, v=None, f=focal).v
    print("Principal plane H' to EXPP (abs.) "
          "calc. using lens equ.: ", abs(v))
    ppObjTofpObj = ppObj - fpObj
    ppImgTofpImg = ppImg - fpImg
    print("Principal plane H' to rear focal plane: ", ppObjTofpObj)
    print("Principal plane H to front focal plane: ", ppImgTofpImg)
    print(("""\nCheck "Skip rays to this surface" under "Draw Tab" of the """
           """surface property for the dummy and cardinal plane surfaces. """
           """See Docstring Notes for details."""))
    if push:
        ln.zPushLens(1)

def insert_cbs_to_tilt_lens(ln, lastSurf, firstSurf=2, pivot='ENPP', push=True):
    """function to insert appropriate coordinate break and dummy surfaces 
    in the LDE for tilting the lens a pivot. 

    The layout will display all the surfaces. This function is needed inspite
    of the ln.zTiltDecenterElements() function because we all the cardinal  
    and associated dummy surfaces in between, and the pivot point is generally 
    not about the lens surface. 
    
    Parameters
    ----------
    ln : object
        pyzdde object
    lastSurf : integer
        the last surface that the tilt coordinate-break should include. This 
        surface is normally the image side principal plane surface H' 
    firstSurf : integer, optional, default=2
        the first surface which the tilt coordinate-break should include. 
        Generally, this surface is 2 (the dummy surface preceding the 
        object side principal plane H)    
    pivot : string, optional 
        indicate the surface about which to rotate. Currently only ENPP 
        has been implemented
    push : bool
        push lens in the DDE server to the LDE

    Returns
    ------- 
    cbs : 2-tuple of integers 
        the first and the second coordinate breaks. Also, if `push` is True, 
        then the LDE will be updated  

    Notes
    ----- 
    1. A dummy surface will be inserted at Surface 2 to move the CB to the 
       pivot point.
    2. Check "skip rays to this surface" for the first and last dummy surfaces 
       inserted by this function.

    Assumptions (weak)
    -----------------
    The following assumptions need not be strictly followed.
    1. Surface 0 is the object surface which may or may not be infinity 
    2. Surface 1 is a dummy surface for seeing ray visibility.  
    """
    ln.zRemoveVariables()
    gRefSurf = ln.zGetSystem().globalRefSurf
    assert ln.zGetSurfaceData(gRefSurf, ln.SDAT_THICK) < 10e10, 'Change global ref' 

    if pivot=='ENPP':
        # estimate the distance from the firstSurf to ENPP
        enpp = ln.zGetPupil().ENPP # distance of entrance pupil from surface 1
        enppInGRef = ln.zOperandValue('GLCZ', 1) + enpp
        firstSurfInGRef = ln.zOperandValue('GLCZ', firstSurf)
        firstSurfToEnpp = enppInGRef - firstSurfInGRef
        # insert dummy surface to move to the pivot position where the CB 
        # will be applied 
        insert_dummy_surface(ln, surf=firstSurf, thickness=firstSurfToEnpp, 
                             semidia=0, comment='Move to ENPP')
        # insert coordinate breaks
        cb1, cb2, _ = ln.zTiltDecenterElements(firstSurf=firstSurf+1, lastSurf=lastSurf+1, 
                                               cbComment1='Lens tilt CB',
                                               cbComment2='Lens restore CB', 
                                               dummySemiDiaToZero=True)
        # set solve on cb1 surface to move back to firstSurf
        ln.zSetSolve(firstSurf+1, ln.SOLVE_SPAR_THICK, ln.SOLVE_THICK_PICKUP, 
                     firstSurf, -1.0, 0.0, 0)

    else:
        raise NotImplementedError("Option not Implemented.")

    if push:
        ln.zPushLens(1)

    return (cb1, cb2)


def show_grid_distortion(n=11):
    """Plots intersection points of an array of real chief rays and paraxial
    chief rays from the object field with the image surface. 
    
    Rays are traced on the lens in the LDE (and not in the DDE server). The 
    paraxial chief ray intersection points forms the reference field. Comparing 
    the two fields gives a sense of the distortion.  
    
    Parameters
    ----------
    n : integer, optional
        number of field points along each x- and y-axis. Total number
        of rays traced equals n**2
    
    Returns
    -------
    None
        A matplotlib scatter plot displays the intersection points, against
        the paraxial intersection points of the chief ray on that specified 
        surface. Therefore, the plot shows the distortion in the system. 

    Notes
    -----
    1. The reference field in Zemax's Grid Distortion plot is generated by 
       tracing a real chief ray very close to the optical axis, and then 
       scaling appropriately. 
    2. TODO: 
       1. Show rays that are vignetted.    
    """
    xPara, yPara, _, _, _     = get_chief_ray_intersects(n, False)
    xReal, yReal, _, err, vig = get_chief_ray_intersects(n, True)
    # plot
    fig, ax = plt.subplots(1, 1, figsize=(6,6), dpi=120)
    ax.scatter(xPara, yPara, marker='o', s=10, facecolors='none', edgecolors='b', 
               alpha=0.8, zorder=12)
    ax.scatter(xReal, yReal, marker='x', s=40, c='r', alpha=0.9, zorder=15)
    # these two lines is dependent on the way the hx, hy grid is created in the 
    # function get_chief_ray_intersects()
    xGridPts = xPara[:n]
    yGridPts = yPara[::n] 
    ax.vlines(xGridPts, ymin=min(yGridPts), ymax=max(yGridPts), 
              zorder=2, colors='#CFCFCF', lw=0.8)
    ax.hlines(yGridPts, xmin=min(xGridPts), xmax=max(xGridPts), 
              zorder=2, colors='#CFCFCF', lw=0.8)
    ax.set_aspect('equal')
    ax.axis('tight')
    plt.show()


def get_chief_ray_intersects(n=11, real=True, surf=-1):
    """Returns the points of intersection of the chief rays from the 
    object field (normalized) with the specified surface. 

    Parameters
    ----------
    n : integer, optional
        number of field points along each x- and y-axis. Total number
        of rays traced equals n**2
    real : bool, optional 
        If `True` (default) then real chief rays are traced, 
        If `False`, then paraxial chief rays are traced 
    surf : integer, optional
        surface number. -1 (default) indicates image plane
    

    Notes
    ----- 
    TODO: 
    1. How to handle errors that occurs during the ray tracing.
    2. The function seems to work only if the field normalization is set 
       to "radial". Need to fix it for rectangular field normalization. 
    """
    # create uniform square grid in normalized field coordinates
    nx = np.linspace(-1, 1, n)
    hx, hy = np.meshgrid(nx, nx)
    hx = hx.flatten().tolist()
    hy = hy.flatten().tolist()
    
    # trace the ray
    mode = 0 if real else 1
    rayData = at.zGetTraceArray(numRays=n**2, hx=hx, hy=hy, mode=mode, surf=surf)

    # parse ray traced data
    err = rayData[0]
    vig = rayData[1]
    x, y, z = rayData[2], rayData[3], rayData[4]

    return x, y, z, err, vig 

def plot_chiefray_intersects(ln, cb, tiltXY):
    """plot chiefray intersects for various rotations of the lens
    about a pivot point
    
    Parameters
    ----------
    ln : object
        pyzdde object
    cb : integer 
        Element tilt coordinate break (the first CB) surface number 
    tiltXY : list of 2-tuples
        each element of the list is a tuple containing the tilt-about-x 
        angle, tilt-about-y angle in degrees of the lens about a 
        pivot point.
        e.g. tiltXY = [(0,0), (10, 0), (0, 10)]
        Max length = 6
        
    Returns
    -------
    None : plot
    """
    tiltAbtXParaNum = 3
    tiltAbtYParaNum = 4
    cols = ['b', 'r', 'g', 'm', 'c', 'y']
    mkrs = ['o', 'x', '+', '1', '2', '3']
    n = 11
    fig, ax = plt.subplots(1, 1, figsize=(8, 8), dpi=120)
    for i, angle in enumerate(tiltXY):
        ln.zSetSurfaceParameter(surfNum=cb, param=tiltAbtXParaNum, value=angle[0])
        ln.zSetSurfaceParameter(surfNum=cb, param=tiltAbtYParaNum, value=angle[1])
        ln.zGetUpdate()
        # push lens into the LDE as array tracing occurs in the LDE
        ln.zPushLens(1)
        x, y, _, err, vig = get_chief_ray_intersects(n=n, real=True)
        legTxt = r'$\alpha_x, \alpha_y = {}^o,{}^o$'.format(angle[0], angle[1])
        if i:
            ax.scatter(x, y, marker=mkrs[i], s=40, c=cols[i], alpha=0.9, zorder=15, 
                       label=legTxt)
        else:
            ax.scatter(x, y, marker=mkrs[i], s=10, facecolors='none', 
                       edgecolors=cols[i], alpha=0.8, zorder=12, label=legTxt)
            xGridPts = x[:n]
            yGridPts = y[::n] 
            ax.vlines(xGridPts, ymin=min(yGridPts), ymax=max(yGridPts), 
                      zorder=2, colors='#CFCFCF', lw=0.8)
            ax.hlines(yGridPts, xmin=min(xGridPts), xmax=max(xGridPts), 
                      zorder=2, colors='#CFCFCF', lw=0.8)
    ax.set_aspect('equal')
    ax.axis('tight')
    ax.set_ylabel(r'$\bf{y}\,\it{(mm)}$', fontsize=15)
    ax.set_xlabel(r'$\bf{x}\,\it{(mm)}$', fontsize=15)
    ax.legend(fontsize=14, scatterpoints=1, markerscale=1., scatteryoffsets=[0.5], mode='expand',
              ncol=len(tiltXY), loc='upper left', bbox_to_anchor=(0.09, 0.965, 0.84, 0.005), 
              bbox_transform=fig.transFigure, handletextpad=0.5, handlelength=0.9)
    plt.show()
    

if __name__ == '__main__':
    pass