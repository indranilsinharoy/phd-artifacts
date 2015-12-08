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
import collections as co
import pyzdde.zdde as pyz 


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


def draw_plane(ln, space='img', dist=0, surfName=None, semiDia=None):
    """function to draw planes at the points specified by "dist"
    
    Parameters
    ----------
    ln : pyzdde object
        active link object
    space : string (`img` or `obj`), optional
        image space or object space in which the plane is specified. 'img' for 
        image space, 'obj' for object space. This info is required because 
        Zemax returns distances that are measured w.r.t. surface 1 in object
        space, and w.r.t. IMG in image space. See the Assumptions.
    dist : float, optional
        distance along the optical axis of the plane from the 1st surface if 
        `space` is `obj` else from the IMG surface. 
    surfName : string, optional
        name to identify the surf in the LDE, added to the comments column
    semiDia : real, optional
        semi-diameter of the surface to set 
        
    Returns
    -------
    None
    
    Assumptions (important to read)
    -------------------------------
    The function assumes (for the purpose of this study) that surface 1 is a dummy 
    surface at certain distance away from the first lens surface. Doing this will 
    enable the rays entering the lens to be visible in the Zemax layout plots even 
    if the object is at infinity. So the function inserts the planes (and their 
    associated dummy surfaces) at surface 2.
    """
    numSurf = ln.zGetNumSurf()
    inSurfPos = numSurf if space=='img' else 2 # assuming that the first surface will be a dummy surface
    ln.zInsertSurface(inSurfPos)
    comment, thickness, ignoreSurface = 1, 3, 20
    ln.zSetSurfaceData(inSurfPos, comment, 'dummy')
    ln.zSetSurfaceData(inSurfPos, thickness, dist)
    set_surface_semidia(ln, inSurfPos, 0)
    #ln.zSetSurfaceData(inSurfPos, ignoreSurface, 1) # can't use this because the thickness will be ignored.
    ln.zInsertSurface(inSurfPos+1)
    ln.zSetSurfaceData(inSurfPos+1, comment, surfName)
    if semiDia:
        set_surface_semidia(ln, inSurfPos+1, semiDia)
    thickSolve, pickupSolve = 1, 5
    frmSurf, scale, offset, col = inSurfPos, -1, 0, 0
    ln.zSetSolve(inSurfPos+1, thickSolve, pickupSolve, frmSurf, scale, offset, col)

def get_cardinal_points(ln, firstDummySurfOff):
    """returns the distances of the cardinal points (along the optical axis)
    
    Parameters
    ----------
    ln : object
        PyZDDE object
    firstDummySurfOff : float
        the thickness of the dummy surface, which is generally the
        surface 1. See the Notes.
    
    Returns
    -------
    fpObj : float
        distance of object side focal point from surface 2 (assuming surface)
        1 is dummy
    fpImg : float
        distance of image side focal point from IMG surface
    ppObj : float
        distance of the object side principal plane from surface 2
    ppImg : float
        distance of the image side principal plane from IMG
    
    
    Notes
    -----
    The "dummy surface" referred to in this function is particular to 
    this local study of cardinal points. A dummy surface in position 1 
    is used to show the input rays to the left of the first optical 
    surface.
    """
    zmxdir = os.path.split(ln.zGetFile())[0]
    textFileName = os.path.join(zmxdir, "tmp.txt") 
    sysProp = ln.zGetSystem()
    numSurf = sysProp.numSurf
    # Since the object space cardinal points are reported w.r.t. the 
    # surface 1, ensure that surface 1 is global reference surface 
    if sysProp.globalRefSurf is not 1: 
        ln.zSetSystem(unitCode=sysProp.unitCode, stopSurf=sysProp.stopSurf, 
                      rayAimingType=sysProp.rayAimingType, temp=sysProp.temp, 
                      pressure=sysProp.pressure, globalRefSurf=1)
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
    if sysProp.globalRefSurf is not 1:
        ln.zSetSystem(unitCode=sysProp.unitCode, stopSurf=sysProp.stopSurf, 
                      rayAimingType=sysProp.rayAimingType, temp=sysProp.temp, 
                      pressure=sysProp.pressure, 
                      globalRefSurf=sysProp.globalRefSurf)
    # Delete the temporary file
    pyz._deleteFile(textFileName)
    return fpObj - firstDummySurfOff, fpImg, ppObj - firstDummySurfOff, ppImg
      
def draw_pupil_cardinal_planes(ln, firstDummySurfOff=40, push=True):
    """function to insert the pupil and cardianl planes in the LDE. 

    The layout will display all the surfaces.
    
    Parameters
    ----------
    ln : object
        pyzdde object
    firstDummySurfOff : float, optional 
        the thickness of the first dummy surface (see Notes in the
        docstring of ``get_cardinal_points()``)
    push : bool
        push lens in the DDE server to the LDE
        
    Assumptions
    -----------
    The function assumes that the lens is already focused appropriately,
    for either finite or infinite conjugate imaging. 
    
    Notes
    -----
    The cardinal and pupil planes are drawn using standard surfaces in the LDE. 
    To ensure that the ray-tracing engine does not treat these surfaces as real 
    surfaces, we need to instruct Zemax to "ignore" rays to these surfaces. 
    Unfortunately, we cannot do it programmatically. So, after the planes have 
    been drawn, we need to manually do the following:
    
    1. 2D Layout settings
        a. Set number of rays to 1 or as needed
    2. For the pupil (ENPP and EXPP) and cardinal surfaces (H, H', F, F'), 
       go to "Surface Properties" >> Draw tab
        a. Select "Skip rays to this surface" 
    3. Set field points to be symmetric about the optical axis

    Also, for clarity, the semi-diameters of dummy sufaces are set to zero.
    """
    ln.zSetWave(0, 1, 1)
    ln.zSetWave(1, 0.55, 1)
    # insert dummy surface at 1 for showing the input ray
    ln.zRemoveVariables()
    ln.zInsertSurface(1)
    comment, thickness, thickVal = 1, 3, firstDummySurfOff
    ln.zSetSurfaceData(1, thickness, thickVal)
    ln.zSetSurfaceData(1, comment, 'dummy 2 c rays')
    set_surface_semidia(ln, 1, 0)
    #origImgSurfNum = ln.zGetNumSurf()
    
    # Draw Exit and Entrance pupil planes
    expp = ln.zGetPupil().EXPP
    print("Exit pupil distance from IMG:", expp)
    draw_plane(ln, 'img', expp, "EXPP")
    
    enpp = ln.zGetPupil().ENPP
    print("Entrance pupil from Surf 1:", enpp)
    draw_plane(ln, 'obj', enpp, "ENPP")

    # Get and draw the Principal planes
    fpObj, fpImg, ppObj, ppImg = get_cardinal_points(ln, firstDummySurfOff)
    print("Focal plane obj: ", fpObj, "\nFocal plane img: ", fpImg)
    draw_plane(ln,'img', fpImg, "F'", 1.2)
    draw_plane(ln,'obj', fpObj, "F", 1.2)
    print("Principal plane obj: ", ppObj, "\nPrincipal plane img: ", ppImg)
    draw_plane(ln,'img', ppImg, "H'")
    draw_plane(ln,'obj', ppObj, "H")

    # Check the validity of the distances
    ppObjToEnpp = ppObj - enpp
    ppImgToExpp = ppImg - expp
    focal = ln.zGetFirst().EFL
    print("Focal length: ", focal)
    print("Principal plane H to ENPP: ", ppObjToEnpp)
    print("Principal plane H' to EXPP: ", ppImgToExpp)
    v = gaussian_lens_formula(u=ppObjToEnpp, v=None, f=focal).v
    print("Principal plane H' to EXPP (absolute distance) "
          "calculated using lens equation: ", abs(v))
    ppObjTofpObj = ppObj - fpObj
    ppImgTofpImg = ppImg - fpImg
    print("Principal plane H' to rear focal plane: ", ppObjTofpObj)
    print("Principal plane H to front focal plane: ", ppImgTofpImg)
    if push:
        ln.zPushLens(1)

if __name__ == '__main__':
    pass