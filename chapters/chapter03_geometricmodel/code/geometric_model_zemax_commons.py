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
import h5py as hdf
import time as time 


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
    
#%% Functions for focal / angular sweep to EDOF simulation using Zemax

def get_directory_path(dirbranch=None):
    '''returns absolute path of the leaf directory 
    
    If directory branch is not present, the function creates the directories under 
    current file directory
    
    Parameters
    ----------
    dirbranch : tuple or None
        tuple of strings representing the directory branch. If `None`
        the current directory is returned
        
    Returns
    -------
    dirpath : string
        absolute path to the directory
    
    Example
    -------
    >>> get_directory_path(['data', 'imgstack'])
    C:\Projects\project_edof\data\imgstack
    
    '''
    wdir = os.path.dirname(os.path.realpath(__file__))
    if dirbranch:
        dirpath = os.path.join(wdir, *dirbranch)
        if not os.path.exists(dirpath):
            os.makedirs(dirpath)
        return dirpath
    else:
        return wdir

def set_hdf5_attribs(hdf5Obj, attribDict):
    """helper function to set attributes

    Parameters
    ---------- 
    hdf5Obj : HDF5 object 
        group or dataset object (including an hdf5 file)
    attribDict : dict 
        attribute dict 
    """
    for key, value in attribDict.items():
        hdf5Obj.attrs[key] = value


# Meta-data schema for storing frames in hdf5 file
# ------------------------------------------------
# / (root Group)
#     Attribute: zemax file (string)
#     Attribute: obj_sharp_focus_distance (real)
#     Attribute: lens_tilt_about_x
#     Attribute: lens_tilt_about_y
#     Attribute: img_sharp_focus_distance (real)
#     Attribute: img_tilt_about_x
#     Attribute: img_tilt_about_y
#     Attribute: img_sim_field_height
#     Attribute: img_sim_oversampling
#     Attribute: img_sim_wavelength
#     Attribute: img_sim_pupil_sampling
#     Attribute: img_sim_image_sampling
#     Attribute: img_sim_psfx_points
#     Attribute: img_sim_psfy_points
#     Attribute: img_polarizatoin
#     Attribute: img_sim_aberrations
#     Attribute: img_sim_relative_illumination
#     Attribute: img_sim_fixed_apertures
#     Attribute: img_sim_reference
#     Attribute: img_sim_pixel_size
#     Attribute: img_sim_xpixels
#     Attribute: img_sim_ypixels


# attributes for each frame
# 1. defocus_waves (only makes sense for fronto-parallel imaging)
# 2. 

def get_image_plane_shifts(nearObj=800, midObj=1000, farObj=1200, fl=24, num=10):
    """Returns the image plane delta shifts in both forward and 
    backward directions from the base position of the image plane.
    
    The "base position" is the position of the image plane for which 
    the middle object is in geometrical focus.
    
    Parameters
    ----------
    farObj : real
        distance along the optical axis for furthest object
    midObj : real
        distance along the optical axis for the middle object
    nearObj : real
        distance along the optical axis for the nearest object
    fl : real
        effective focal length 
    num : integer
        number of images in focal stack
        
    Returns
    -------
    imgDelta : list
        sorted list containing the delta image plane shifts with a 
        guaranteed 0 delta shift value that corresponds to the 
        "base position" of the image plane
        
    Notes
    -----
    1. The inputs distances are in the object side. The output
       image plane shifts are in the image side.
    2. It is highly improbable, but possible, that the length of the
       returned list is one less than `num`. This unlikely event 
       occurs if `num` is even and distance between the far and 
       near object focus in the image side can be evenly divided.
    """
    midFocalImg = gaussian_lens_formula(u=midObj, f=fl).v
    nearFocalImg = gaussian_lens_formula(u=nearObj, f=fl).v
    farFocalImg = gaussian_lens_formula(u=farObj, f=fl).v
    a = farFocalImg - midFocalImg
    b = nearFocalImg - midFocalImg
    imgDelta = np.linspace(a, b, num - 1).tolist()
    if all(imgDelta):
        imgDelta = imgDelta + [0,]
        imgDelta.sort()
    return imgDelta

# Here is a quick and dirty helper function to estimate the size of the PSF 
# in the image plane using Zemax

def get_spot_dia(ln,  spotType='rms', whichWave='pri', hy=0, field=1, frac=0.98):
    """returns diffraction limited, RMS spot or encircled energy fraction based
    diameter in the image plane in microns.

    Parameters
    ----------
    ln : object 
        pyzdde link object
    spotType : 3 letter string code ('rms', 'diff', 'enc')
        'diff' for diffraction limited airy spot diameter, 
        'rms' for RMS spot diameter
        'enc' : greater of diffraction encircle (ensquared) energy or 
        and geometric encircle energy  
    whichWave : 3 letter string code ('pri' or 'gre')
        wavelength - 'pri' for primary wave, 'gre' for greatest.
        (applicable only for diffraction limited spot computation. `rms` 
         and `enc` uses weighted polychromatic wavelength)
    hy : real (0 <= hy <= 1), optional 
        normalized field height (applicable only for `rms` spot). 
    field : integer, optional  
        field number (applicable only for `enc` computation). 
    frac : real (0 < frac <=1), optional 
        fraction for encircled energy calculation  
        
    Returns
    -------
    spotDia : real
        spot diameter in microns

    Notes
    ----- 
    1. The diffraction stop ('diff') returns on-axis airy diameter 
    2. For paraxial systems, the 'rms' spot radius will zero or very close
       to zero. Use diffraction limited spot diameter or encircled energy 
       for such systems.
    3.  
    """
    if spotType =='diff':    
        if whichWave=='pri':
            wave = ln.zGetWaveTuple().wavelengths[ln.zGetPrimaryWave()-1]
        else:
            waveTuple = list(ln.zGetWaveTuple().wavelengths)
            waveTuple.sort()
            wave = waveTuple[-1]
        fnum = ln.zGetFirst().paraWorkFNum
        diffLimSpotDia = 2.44*wave*fnum # in microns
        return diffLimSpotDia
    elif spotType=='rms': # RMS spot 
        rmsOperC = ['RSCE', 'RSCH']  # GQ usg. circ. grid
        rmsOperR = ['RSRE', 'RSRH']  # usg. rect. grid of rays
        rmsSpotC, rmsSpotR = [], []
        hx = 0
        hy = hy if hy is not None else 0
        ring, samp, wave, hx = 6, 10, 0, 0 
        for oper in rmsOperC:
            rmsSpotC.append(ln.zOperandValue(oper, ring, wave, hx, hy))
        for oper in rmsOperR:
            rmsSpotR.append(ln.zOperandValue(oper, samp, wave, hx, hy))
        rmsSpots = rmsSpotC + rmsSpotR
        rmsSpotDia = 2.0*np.median(rmsSpots)*1000 # microns
        return rmsSpotDia
    elif spotType=='enc': # encircled energy 
        samp, wave, etype = 3, 0, 4
        field = field if field is not None else 1
        denc = 2.0*ln.zOperandValue('DENC', samp, wave, field, frac, etype, 3, 0, 0)
        genc = 2.0*ln.zOperandValue('GENC', samp, wave, field, frac, etype, 0, 0, 0)
        return genc if genc > denc else denc 
    else:
        raise ValueError, 'Incorrect spot type'

# the minimum (diffraction limited spot at best focus) should determine the field height 
# based on a criterion of number of pixels per spot. The maximum spot size should determine
# the image sampling

def get_min_max_PSF_size(ln, imgDelta, frac=0.98):
    """returns the minimum and maximum spot size (PSF) in the 
    object space from the set of spot sizes computed over the
    given set of image plane shifts
    
    The spot size in the object space is obtained by scaling the 
    image space spot size by the transverse magnification
    
    Parameters
    ----------
    ln : object
        pyzdde object
    imgDelta : list 
        list of image plane shifts (deltas) from the baseline 
        image plane configuration
    frac : real (0 < frac <= 1)
        fraction of ensquared energy 
        
    Returns
    -------
    spots : tuple
        a tuple consisting of the minimum and maximum spot 
        sizes in microns
    
    Assumptions
    -----------
    The optical system is focal and in finite imaging configuration
    
    Notes
    -----
    1. It is generally sufficient to inspect the psf spot sizes only 
       for the extreme shifts on either sides of the best focus and
       the best focus. i.e restrict the length of `imgDelta` to just 
       three configurations.
    2. Currently the computation is performed only for on-axis field
       point. However, it can be changed easily by providing another
       input parameter to this function and then calling 
       `gm.get_spot_dia()` accordingly.
    """
    # insert surface to impart image delta shifts of the image plane
    imgDeltaSurf = totSurf = ln.zGetNumSurf()
    ln.zInsertSurface(surfNum=totSurf)
    ln.zSetSemiDiameter(surfNum=imgDeltaSurf, value=0)
    spot = []  
    for delta in imgDelta:
        #print('image delta:', delta)
        ln.zSetThickness(surfNum=imgDeltaSurf, value=delta)
        ln.zGetUpdate()
        ensqSpotImg = get_spot_dia(ln, spotType='enc', frac=frac)
        #print('ensqSpotImg', ensqSpotImg)
        ensqSpotObj = ensqSpotImg /abs(ln.zGetMagnification())
        spot.append(ensqSpotObj)
    # clean up the inserted surface
    ln.zDeleteSurface(surfNum=imgDeltaSurf)
    spot = np.array(spot)
    return spot.min(), spot.max()

def obj_field_height(ppp, ypix, minSpotDia):
    """determines the maximum field height for image simulation
    in zemax based on a minimum pixels per PSF criterion
    
    Parameters
    ----------
    ppp : integer 
        pixels per PSF (a design choice / criterion)
    ypix : integer 
        number of pixels along the height of the source bitmap
    minSpotDia : real 
        diameter of the minimum spot size at best focus
    
    Returns
    -------
    h : real 
        height (in units of `minSpotDia`) of field
    
    Logic
    -----
    
      h                     minSpotDia
    ----- = objPixelSize = ------------
     ypix                     ppp
     
    """
    return ypix*minSpotDia/ppp

def image_sampling(h, ypix, maxSpotDia):
    """determine the image sampling to ensure sufficient 
    samples for worst case PSF
    
    Parameters
    ----------
    h : real 
        field height in millimeters
    ypix : integer 
        number of pixels along the height of the source bitmap
    maxSpotDia : real 
        diameter of the worst case PSF in millimeters
    
    Returns
    -------
    numPixels : integer 
        minimum number of pixels to select for image sampling
    
    """
    pixelHeight = h/ypix
    numPixels = int(maxSpotDia/pixelHeight)
    return numPixels

def get_detector_settings(h, xpix, ypix, fl, xfield, umid, unear=None):
    """get detector settings 
    
    Parameters
    ----------
    h : real 
        field height of the source bitmap image in image 
        simulation setting, in mm
    xpix : integer
        number of pixels along the width in source bitmap
    ypix : integer 
        number of pixels along the height in source bitmap
    f : real
        focal length of the lens
    xfield : real
        x field (as object height) in fields settings
    umid : real
        object plane distance along the optical axis for
        the middle plane (that is in focus)
    unear : real, optional
        object plane distance along the optical axis for
        the nearest object plane. If `None`, then `unear`
        is assumed to be equal to `u
        
    Returns
    -------
    detPixelSize : real 
        pixel size of detector in millimeters
    detXpixels : integer
        X Pixels of detector
    detYpixels : integer
        Y Pixels of detector
    
    Note
    ----
    1. Zemax (and so do we) assumes square pixels
    2. The function assumes that the field setting contains 
       ± xfield 
    """
    aratio = xpix/ypix
    w = aratio*h   # width in obj space
    pixHeightObj = h/ypix
    # calculation on the middle plane (that is in focus)
    tmag = fl/(umid - fl)
    detPixelSize = pixHeightObj*abs(tmag)  
    
    # calculate detector width and height for the largest
    # magnification
    unear = unear if unear is not None else umid
    tmagNear = fl/(unear -fl)
    imgHeight = h*abs(tmagNear) 
    imgWidth = w*abs(tmagNear)
    detXPixels = int((2.0*xfield*abs(tmagNear) + imgWidth)/detPixelSize) + 30  
    detYPixels = int(imgHeight/detPixelSize) + 60 # 25 pixels of guard top & bottom
    return detPixelSize, detXPixels, detYPixels

def grid_of_square_dots(pixx=640, pixy=480, numx=7, numy=7, size=1, ch=3,
                        interSpread='max'):
    """returns a grid-of-square-dots ndarray 
    
    Parameters
    ----------
    pixx : integer 
        number of pixels along x (horizontal or number of columns)
    pixy : integer 
        number of pixels along y (vertical or number of row)
    numx : integer 
        number of square dots along x
    numy : integer 
        number of square dots along y
    size : integer (odd)
        number of pixels on the square sides. The square is 
        always symmetric about zero. 
    ch : integer 
        number of color planes. Usually 1 or 3
    interSpread : string ('max', 'uni')
        if 'uni' intermittent space between the dots and the edges
        along each axis are equal (may be off by a pixel)
        if 'max' the intermittent space between the dots are 
        maximized at the cost of the space along the boundary (i.e
        the guard band is reduced)
        
    """
    if interSpread == 'max': 
        uniDeltaXby2 = np.floor(0.5*pixx/(numx-1)) if numx > 1 else np.floor(0.5*pixx)
        uniDeltaYby2 = np.floor(0.5*pixy/(numy-1)) if numy > 1 else np.floor(0.5*pixy)
        anyPerPixX = np.floor(0.15*pixx) if numx > 1 else np.floor(0.5*pixx)
        anyPerPixY = np.floor(0.15*pixy) if numy > 1 else np.floor(0.5*pixy)
        guardX = anyPerPixX if anyPerPixX < uniDeltaXby2 else uniDeltaXby2
        guardY = anyPerPixY if anyPerPixY < uniDeltaYby2 else uniDeltaYby2       
        xg = np.floor(np.linspace(guardX,  pixx - guardX, numx)).astype(np.uint32)
        yg = np.floor(np.linspace(guardY, pixy - guardY, numy)).astype(np.uint32)
    else: # uniformly spread
        xg = np.floor(np.linspace(0, pixx, numx+2)[1:-1]).astype(np.uint32)
        yg = np.floor(np.linspace(0, pixy, numy+2)[1:-1]).astype(np.uint32)
    indicesX, indicesY = np.meshgrid(yg, xg)
    gridofdots = np.empty((pixy, pixx, ch), dtype=np.uint8)
    grid = np.zeros((pixy, pixx), dtype=np.uint8)
    for i in range(-int(size/2), int(0.9*size/2) + 1):
        for j in range(-int(size/2), int(0.9*size/2) + 1):
            grid[[indicesX-i], [indicesY-j]] = 255
    for each in range(ch):
        gridofdots[:, :, each] = grid
    return gridofdots


def simulate_depth_imaging(ln, objsurfthick, objarr, fldarr, data, cfgname, 
                           objht, over, pupsam, imgsam, psfx, psfy, pixsize, 
                           xpix, ypix, timeout=180, verbose=True):
    """Simulate imaging with planes at different depths
    
    Parameters
    ----------
    ln : object
        pyzdde object
    objsurfthick : list
        list of object surf (surfNum 0) thickness. This function changes the 
        thickness of the OBJ surface to the values specified in the `objsurfthick`
        list. The physical object-to-lens vertex distance is equal to the 
        sum of the thicknesses of the OBJ surface and surface number 1 (dummy 2 c rays) 
    objarr : list of strings 
        list of image files that represents the planar objects at the corresponding
        object distances in `objdist`. These image files must be present in the 
        folder "C:\Users\<username>\Documents\ZEMAX\IMAFiles"
    fldarr : list of integers
        list of field numbers that are used for the corresponding objects in 
        `objarr` for image simulation in Zemax. 
    data : string, ('img' or 'psf')
        if 'img' then the simulated image is returned, if 'psf', then
        the PSF grid is returned.  
    cfgname : string
        name of settings file to use
    objht : real
        object height in mm
    over : integer, [0-6] or None
        oversample value. Use 0 for none, 1 for 2X, 2 for 4x, etc.
    pupsam : integer 
        pupil sampling
    imgsam : integer
        image sampling 
    psfx : integer
        psf grid number x
    psfy: integer
        psf grid number y
    pixsize : real 
        pixel size, in mm
    xpix : integer 
        number of pixel along x
    ypix : integer
        number of pixel along y
    timeout : integer, optional
        timeout in ms
    verbose : bool, optional
        if True, the function prints to notify the completion of every image 
        simulation
        
    Returns
    -------
    img : ndarray
        simulated image
    mag : list 
        paraxial magnification for the objects at different object distances 
    
    Notes
    -----
    The "reference" parameter in the Image Simulation is set to "vertex".
    
    Assumptions
    -----------
    The surface 0 in the LDE is considered to be the object surface at finite distance
    
    """
    assert len(objsurfthick) == len(objarr) == len(fldarr), \
    "input arrays must be of equal lengths"
    img = np.zeros((ypix, xpix, 3), dtype='uint8')
    fpath = os.path.split(ln.zGetFile())[0]
    cfg = os.path.join(fpath, cfgname)

    showAs = 2 if data=='psf' else 0

    cfg = ln.zSetImageSimulationSettings(settingsFile=cfg, height=objht, over=over, 
                                         pupilSample=pupsam, imgSample=imgsam, 
                                         psfx=psfx, psfy=psfy, pixelSize=pixsize, 
                                         xpix=xpix, ypix=ypix, reference=1, aberr=2, 
                                         illum=1, showAs=showAs)
    mag = []
    for thick, obj, fld in zip(objsurfthick, objarr, fldarr):
        ret = ln.zSetThickness(surfNum=0, value=thick)
        assert ret == thick
        ret = ln.zModifyImageSimulationSettings(settingsFile=cfg, image=obj, field=fld)
        imgInfo, imgData = ln.zGetImageSimulation(settingsFile=cfg, timeout=timeout)
        if data == 'img': # the PSF grid spans the field size in the object space
            assert imgInfo.xpix == xpix and imgInfo.ypix == ypix
        for i in range(3): 
            img[:, :, i] = img[:, :, i] + np.array(imgData, dtype='uint8')[:, :, i]
        mag.append(ln.zGetMagnification())
        if verbose:
            print(("Image sim of data type {} for obj {} for obj thick "
                   "{:2.2f} done!".format(data, obj, thick)))
    return img, mag


def focal_stack_fronto_parallel(ln, imgDelta, objsurfthick, objarr, fldarr, objht,
                                over, pupsam, imgsam, psfx, psfy, pixsize, 
                                xpix, ypix, timeout=180, verbose=False):
    """Creates and returns a stack of simulated images for various focal distances 
    and associated metadata in HDF5 container 
    
    Parameters
    ----------
    imgDelta : list of reals
        the deltas by which the image plane is shifted from the base image plane 
        distance. 
    objsurfthick : list
        list of object surf (surfNum 0) thickness. See more in `simulate_depth_imaging()` 
    objarr : list
        list of image files that represents the planar objects at the corresponding
        object distances in `objdist`. See more in `simulate_depth_imaging()` 
    fldarr : list
        list of field numbers. See more in `simulate_depth_imaging()` 
    objht : real
        object height in mm
    over : integer 
        oversampling. See more in `simulate_depth_imaging()`
    pupsam : integer
        pupil sampling
    imgsam : integer
        image sampling 
    psfx : integer
        psf grid number x
    psfy: integer
        psf grid number y
    pixsize : real 
        pixel size, in mm
    xpix : integer 
        number of pixel along x
    ypix : integer
        number of pixel along y
    timeout : integer, optional, default=180
        timeout in ms for each image simulation
    verbose : bool, optional
        if True, the function prints to notify the completion of every image 
        simulation

    Returns
    ------- 
    hdffileFull : string 
       the file name, including absolute path, of the hdf5file containing 
       the stack of images  
    """  
    imgDeltaSurf = totSurf = ln.zGetNumSurf()
    ln.zInsertSurface(surfNum=totSurf)
    ln.zSetSemiDiameter(surfNum=imgDeltaSurf, value=0)
    
    # hdf5 file save settings
    imgstackdir = get_directory_path(['data', 'imgstack'])
    timetag = time.strftime('%Y_%m_%d_%H_%M') # year, month, day, hour, mins
    hdffile = 'fronto_para_focal_stack_{}.hdf5'.format(timetag)
    hdffileFull = os.path.join(imgstackdir, hdffile)
    samplingGrid =[32*(2**i) for i in range(10)]
    
    # create stack
    with hdf.File(hdffileFull, 'w') as f:
        globalAttribDict = {'zmxfile' : os.path.split(ln.zGetFile())[-1],
                            'img_sim_field_height' : objht,
                            'img_sim_oversampling' : str(over),
                            'img_sim_wavelength' : 'RGB',
                            'img_sim_pupil_sampling' : samplingGrid[pupsam-1],
                            'img_sim_image_sampling' : samplingGrid[imgsam-1],
                            'img_sim_psfx_points' : psfx,
                            'img_sim_psfy_points' : psfy,
                            'img_sim_polarization' : 'None',
                            'img_sim_aberrations' : 'Diffraction',
                            'img_sim_relative_illumination' : 'Yes',
                            'img_sim_fixed_apertures' : 'Yes',
                            'img_sim_reference' : 'vertex',
                            'img_sim_pixel_size' : pixsize,
                            'img_sim_xpixels' : xpix,
                            'img_sim_ypixels' : ypix
                           }
        set_hdf5_attribs(f, globalAttribDict)
        dataGrp = f.create_group('data')  # data group
        for i, delta in enumerate(imgDelta):
            if verbose:
                print('Starting image simulation for delta = {:2.4f}'.format(delta))
            ln.zSetThickness(surfNum=imgDeltaSurf, value=delta)
            ln.zGetUpdate()
            dataSubGrp = dataGrp.create_group('{}'.format(i).zfill(3) )
            # image data
            img, mag = simulate_depth_imaging(ln, objsurfthick, objarr, fldarr, 'img',
                                              'spl.cfg', objht, over, pupsam, imgsam, 
                                              psfx, psfy, pixsize, xpix, ypix, timeout,
                                              verbose)
            dsetimg = dataSubGrp.create_dataset('image', data=img, dtype=np.uint8)
            # PSF grid data
            psfgrid, _ = simulate_depth_imaging(ln, objsurfthick, objarr, fldarr, 'psf',
                                                'spl.cfg', objht, over, pupsam, imgsam, 
                                                psfx, psfy, pixsize, xpix, ypix, timeout,
                                                verbose)
            dsetpsf = dataSubGrp.create_dataset('psf', data=psfgrid, dtype=np.uint8)
            # TO DO: add chief-ray intersects dataset
            dataSubGrpAttribDict = {'delta_z' : delta,   # others attributes like defocus_waves, paraxial mag etc
                                    'mag' : mag,   # list of magnifications at the different depths
                                   }
            set_hdf5_attribs(dataSubGrp, dataSubGrpAttribDict)

    ln.zDeleteSurface(surfNum=imgDeltaSurf)
    return hdffileFull

if __name__ == '__main__':
    pass