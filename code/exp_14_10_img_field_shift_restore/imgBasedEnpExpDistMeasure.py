# -*- coding: utf-8 -*-
#-------------------------------------------------------------------------------
# Name:      imgBasedEnpExpDistMeasure.py
# Purpose:   program to estimate the distance between the entrance and exit
#            pupil of a lens using image based method. 
#
#            Expected blob pattern in the calibration target
#
#               o            o
#                 ..........
#                 ..........
#                 ..........
#                 ..........
#                 ..........
#               o            o
#
# Author:      Indranil Sinharoy
#
# Created:     Thu Mar 19 13:52:17 2015
# Copyright:   (c) Indranil Sinharoy, 2012 - 2015
# License:     MIT License
#-------------------------------------------------------------------------------

from __future__ import division, print_function
import numpy as np
import scipy.spatial as sps
import matplotlib.pyplot as plt
import os.path as osp
import iutils.pyutils.aputils as apu
import cv2 as cv2
import iutils.cvutils.transformutils as tutils
# import Christoph Gholke's tifffile module
import iutils.imageutils.tifffile.tifffile as tf
#import sys as sys

#TODO!!
# 1. Answer, why the transformation is not just a "similarity" transformation
#    and we need to model it as an "affine" transformation. An affine 
#    transformation includes non-isotropic scaling. 
# Related question? What happens if the angle of tilt is large? does the affine
# transformation nature become more apparent? 
# 2. What happens to the nature of the transform if both swing and tilts are present?

#%% Global variables
RED, GREEN, BLUE = 0, 1, 2         # Color channel code

#%% Program behaviour control flags

# Whether to use Zemax image simulation data or Sinar image data
bZEMAXSIMULATION = True

# The computation of homography can be done from stored data
# if bUSESTOREDDATA is False, the centrioids  data will be
# stored in "centroids_data.npz" file
bUSESTOREDDATA = True

# Enable/ disable print and imshow functions for debugging
bDEBUG = False

# image file names and locations
if bZEMAXSIMULATION:
    npzCentroidData = "centroids_data_zemax_simulation.npz" 
    imgDir = ("C:\\GIT_REPOSITORIES\\phd-artifacts\\code" +
              "\\exp_14_10_img_field_shift_restore\\data\\zemaxImageSimulationData\\")
    imgPPP =  imgDir + "simulatedImage180mmLensTilt00Deg.png"
    bkfPPP = 'none'
    imgPSP =  imgDir + "simulatedImage180mmLensTilt10Deg.png"
    bkfPSP = 'none'
    expBlobs = 29
else:
    npzCentroidData = "centroids_data_sinar_image.npz"
    imgDir = "C:\\thesis_images\\2015_03_17_enp_exp_dist_mesure\\"
    imgPPP =  imgDir + "CalibTgt_Zero_degree_Swing.tif"
    bkfPPP = imgDir + "Dark_Frame_Zero_Degree_Swing.tif"
    imgPSP =  imgDir + "CalibTgt_Ten_degree_Swing_about_EnP_after_Compensation.tif"
    bkfPSP = imgDir + "Dark_Frame_Ten_Degree_Swing_about_Enp_after_Compensation.tif"
    expBlobs = 54

#%% Helper functions

def show_images(img0, img1=None, spximg0=None, spyimg0=None, spximg1=None, spyimg1=None,
                txtimg0=None, txtimg1=None, txtcol='w', txtfntsize=8, 
                axtitle0=None, axtitle1=None, figtitle=None):
    """function to show two images side-by-side for comparison. Mainly used for
    visual debugging

    Parameters
    ----------
    img0, img1 : ndarray, ndim = 2
        gray scale image (img1 is optional)
    spximg0, spyimg0, spximg1, spyimg1 : list, optional
        list of x and y points that are shown as scatter
        points overlaid on the images img0 and img1 respectively.
    txtimg0 , txtimg1 : list, optional
        list of strings to display beside the scatter points
    txtcol : string, optional
       annotation text color
    txtfntsize : integer, optional
        annotaiton text font size
    axtitle0, axtitle1 : string, optional
        tiltes for the two axis
    figtitle : string, optional
        figure title

    Returns
    -------
    None
    """
    for i in range(2):
        spximg = eval("spximg{}".format(i))
        spyimg = eval("spyimg{}".format(i))
        txtimg = eval("txtimg{}".format(i))
        noSpGiven = (spximg is None) and (spyimg is None)
        bothSpGiven = (spximg is not None) and (spyimg is not None)
        assert noSpGiven or bothSpGiven, \
        "Either both or none of spximg{} and spyimg{} are required".format(i, i)
        if spximg is not None:
            assert len(spximg) == len(spyimg), \
            "Expecting len of spximg{} and spyimg{} of equal length".format(i, i)
        if txtimg is not None:
            assert len(txtimg) == len(spximg), \
            "Expecting len of txtimg{} and spximg{} of equal length".format(i, i)

    axCols = 2 if img1 is not None else 1
    fig, axes = plt.subplots(1, axCols, tight_layout=True)
    try:
        ax = axes.ravel()
    except:
        ax = [axes, ]
    # Set color and size of scatter plot's dots
    if len(spximg) == 4:
        sCol = ['r', 'g', 'b', 'c']
        sSize = 20
    else:
        sCol = 'c'
        sSize = 5

    # plot the figure, and show scatter dots and annotations
    for i, a in enumerate(ax):
        img = eval("img{}".format(i))
        spximg = eval("spximg{}".format(i))
        spyimg = eval("spyimg{}".format(i))
        txtimg = eval("txtimg{}".format(i))
        title = eval("axtitle{}".format(i))
        height, width = img.shape
        a.imshow(img, 'gray')
        a.set_xlim(0, width-1)
        a.set_ylim(height-1, 0)
        sTxtOff = 0.002*height
        if spximg is not None:
            a.scatter(spximg, spyimg, c=sCol, s=sSize, lw=0.1)
        if txtimg is not None:
            for i, txt in enumerate(txtimg):
                a.text(spximg[i] + sTxtOff, spyimg[i] - sTxtOff, txt,
                       fontsize=txtfntsize, color=txtcol)
        if title:
            a.set_title(title, y=-0.07, fontsize=12)
    if figtitle:
        fig.suptitle(figtitle, y=0.999, fontsize=13)
    plt.show()
    
def retrieve_images(tgtImgName, darkImgName, ch=GREEN):
    """returns 2-dim ndarray of image data after subtracting the dark frame image
    
    Parameters
    ----------
    tgtImgName : string
        full-path file name of the calibration target image
    darkImgName : string
        full-path file name of the corresponding dark image. If there is no 
        dark frame image use "none". (a dark frame is mandatory for .tif images)
    ch : valid integer or valid name
        specifies which channel data to extract and return
        0 or RED for red channel, 1 or GREEN for green channel, 2 or BLUE for 
        blue channel
    
    Returns
    -------
    tgtImg : 2-dim ndarray (dtype=np.int32)
        ndarray with the target image data
        
    HINT (assumption): if the extension is "tif", the image is assumed to be from 
    the Sinar camera, and Christoph Gholke's tifffile module is used to extract
    the data otherwise opencv is used. Also, the `tgtImgName` and `darkImgName`
    are assumed to have the same file extension.
    """    
    if osp.splitext(tgtImgName)[1] == '.tif':
        #print("Using Christoph Gholke's tifffile module to read image")
        img = tf.imread(tgtImgName)
        bframe = tf.imread(darkImgName)
    else:
        #print("Using OpenCV's image read function")        
        ch = abs(ch-2) # convert channel code to openCV's BGR code
        img = cv2.imread(tgtImgName, cv2.CV_LOAD_IMAGE_COLOR)
        if darkImgName is not 'none':
            bframe = cv2.imread(darkImgName, cv2.CV_LOAD_IMAGE_COLOR)
        else:
            bframe = np.zeros_like(img)
    tgtImg = img[:,:,ch].astype(np.int32) - bframe[:,:,ch].astype(np.int32)
    return tgtImg

def get_centroids_from_blobs(img, expBlobs=4, blobType='all', retBI=False):
    """returns the centroid of blobs in the image

    Parameters
    ----------
    img : ndarray, ndim=2
        gray scale image
    expBlobs : integer
        expected number of blobs
    blobType : string, optional
        'large', 'small', 'all' (default) to indicate the type of blob to detect
    retBI : bool, optional
        whether to return the binary image along with the centroids (for debugging)

    Returns
    -------
    cx : ndarray
        1-D array of x-coordinates of the centroids
    cy : ndarray
        1-D array of y-coordinates of the centroids
    imgBinRet : ndarray, optional
        binary image (for debugging) if `retBI` is True.
    """
    if blobType == 'small':
        raise NotImplementedError, "blobType 'small' has not been implemented!"
    assert img.ndim == 2
    minScaled = 0    #minScaled = int((np.min(img)/65535)*255)
    maxScaled = 255  #maxScaled = int((np.max(img)/65535)*255)
    # Scale image between 0 and 255
    imgScaled = apu.rescale(img, low=minScaled, high=maxScaled).astype(np.uint8)

    threshold = int(maxScaled*0.75)
    imgBin = (imgScaled > threshold).astype(np.uint8)

    if retBI: # for debug purposes.
        imgBinRet = imgBin.copy()

    # morphological operations to fill holes
    kernel = np.ones((10, 10), np.uint8)
    imgMorph = cv2.morphologyEx(imgBin, cv2.MORPH_CLOSE, kernel)

    if blobType=='large':
        # morphological operation to detect only the bigger blobs in the corners
        kernel = np.ones((50, 50), np.uint8)
        imgMorph = cv2.erode(imgMorph, kernel, iterations=1)

    # for debugging
    #show_images(imgBin, imgMorph)

    cx = [] # along columns
    cy = [] # along rows

    # Get the centroid, by calculating contours, and moments
    contours, _ = cv2.findContours(imgMorph, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)

    assert len(contours) == expBlobs, ("Expecting {} blobs. Found {} blobs! "
                                       "Threshold = {}, Maximum scaled value = {}"
                                       .format(expBlobs, len(contours),
                                               threshold, maxScaled))
    #print("Number of contours: ", len(contours))
    #invalidMomentsCts = 0
    for cnt in contours:
        mom = cv2.moments(cnt)
        # center of mass
        #print(cnt)
        #print(mom['m00'])
        try:
            x, y = int(mom['m10']/mom['m00']), int(mom['m01']/mom['m00'])
        except:
            #invalidMomentsCts += 1
            assert False, "Invalid moments, the area of the blob may have been zero!"
        else:
            cx.append(x)
            cy.append(y)
    #print("Invalid moments", invalidMomentsCts)
    if retBI:
        return np.array(cx), np.array(cy), imgBinRet
    else:
        return np.array(cx), np.array(cy)

def get_nearest_point(cx, cy, x, y):
    """find the nearest point to a reference point (``x``, ``y``) from
    a list of points that are specified by ``cx``, and ``cy``.

    Parameters
    ----------
    cx : ndarray, ndim=1
        1-D array of x-coordinates of points
    cy : ndarray, ndim=1
        1-D of y-coordinates of the points
    x : float
        x-coordinate of the reference point
    y : float
        y-coordinate of the reference point

    Returns
    -------
    cxp : float
        x-coordinate of the closest point to (x, y)
    """
    cdist = sps.distance.cdist
    cxy = np.hstack((cx[:, np.newaxis], cy[:, np.newaxis]))
    distVec = cdist(cxy, np.array((x, y)).reshape(1, 2), 'euclidean').flatten()
    minIndex = np.argmin(distVec)
    return cx[minIndex], cy[minIndex], minIndex
    
    
def prune_corner_blobs(cx, cy, indicesX, indicesY):
    """remove elements specified by ``indices`` from two given numpy arrays
    
    Parameters
    ----------
    cx : ndarray
        1-d input ndarray
    cy : ndarray
        1-d input ndarray
    indicesX : list
        indices to remove from ``cx``
    indicesY : list
        indices to remove from ``cy``
    
    Returns
    -------
    cxNew : ndarray
        1-d output ndarray with the specified elements removed
    cyNew : ndarray
        1-d output ndarray with the specified elements removed
        
    Note
    ----
    Since numpy arrays are immutable, new arrays are returned
    """
    return np.delete(cx, indicesX), np.delete(cy, indicesY)

def sort_array(arr, method='norm'):
    """Return array with its columns sorted using ``method``
    """
    if method == 'norm':
        ret = arr[:, np.linalg.norm(arr, axis=0).argsort()]
    else:
        raise NotImplementedError
    return ret
    
def get_fp2tp_map_index(fp, tp):
    """return ordered list indices that maps columns in `fp` to columns in `tp`
    based on euclidean distance measure. Each column in `fp` represents a point,
    and columns of `tp` are correspondences.
    
    Parameters
    ----------
    fp : ndarray
        ``Nx2`` ndarray, where the second dimension is the ``(x, y)`` coordinate 
        of a "from" point 
    tp : ndarray
        ``Nx2`` ndarray, where the second dimension is the ``(x, y)`` coordinate 
        of a "to" point
    
    Returns
    -------
    mapping : list
        list of ordered indices that map every column in ``fp`` to a 
        corresponding column in ``tp``. More precisely, the function returns the
        range of the mapping. 
        
    Example
    -------
    >>> a = np.array([[0, 0], [0, 5], [0, 10]])
    >>> b = np.array([[0, 10], [0, 5], [0, 0]])
    >>> # The distance matrix between a and b is the matrix as follows, with
    >>> # a's along the rows and b's along the columns
    >>> #
    >>> #                           b  •——————>
    >>> #                      [0, 10]    [0, 5]    [0, 0] 
    >>> #                    .—————————.—————————.—————————. 
    >>> #       a    [0, 0]  |   10    |    5    |    0    |
    >>> #       •            |—————————|—————————|—————————|
    >>> #       |    [0, 5]  |    0    |    5    |    5    |
    >>> #       |            |—————————|—————————|—————————|
    >>> #       ¥    [0, 10] |    0    |    5    |   10    |
    >>> #                    '—————————'—————————'—————————' 
    >>> #
    >>> # the mapping index between a and b is then computed as the minimum
    >>> # distance in each row.
    >>> get_fp2tp_map_index(a, b)
    [2, 1, 0]
    
    References
    ----------
    1. Distance matrix @ Wikipedia: http://en.wikipedia.org/wiki/Distance_matrix
    2. scipy.spatial.distance_matrix @ Scipy reference document
    """
    assert fp.shape == tp.shape, "fp and tp are expected to be of the same shape"
    assert fp.shape[1] == 2 , "Expected shape of fp and tp is (N, 2)"   
    dm = sps.distance_matrix(fp, tp)   
    mapping = np.argmin(dm, axis=1).astype(np.int16)
    assert len(mapping) == len(np.unique(mapping)), \
    ("Found at least one non-unique correspondence pair! \nmapping = {}"
    .format(mapping.tolist()))
    return mapping.tolist()


#%% Main logic starts here

# Image variable naming convention
# imgPPP = image - {object orientation} {lens orientation} {sensor orientation} 
# orientation could be normal or slanted (N/S),

# Get images
cbimgPPP = retrieve_images(imgPPP, bkfPPP, GREEN)
cbimgPSP = retrieve_images(imgPSP, bkfPSP, GREEN)

if bUSESTOREDDATA: # load data from stored data in file (npzCentroidData)
    data = np.load(npzCentroidData)
    cxPPP, cyPPP = data['cxPPP'], data['cyPPP']
    cxPSP, cyPSP = data['cxPSP'], data['cyPSP']
else: # Recompute everything after fresh re-load of calibration images
    # Get centroids of blobs for PPP image
    cxPPP, cyPPP = get_centroids_from_blobs(cbimgPPP, expBlobs=expBlobs, blobType='all')
    # Get centroids of blobs for PSP image
    cxPSP, cyPSP = get_centroids_from_blobs(cbimgPSP, expBlobs=expBlobs, blobType='all')
    # save the centroid data to file
    np.savez(npzCentroidData, cxPPP=cxPPP, cyPPP=cyPPP, cxPSP=cxPSP, cyPSP=cyPSP)

# At this point all data (i.e. the centroids of the blobs for both large blobs
# and small blobs are available, either from fresh computation using the calib
# images or from the stored file)

# Find the extent of the images in pixels in order to detect the corner
# blobs.
# HINT (assumption): both the 0° and 10° tilted/swung images have the same number of 
# pixels.    
pixelsY, pixelsX = np.shape(cbimgPPP)

# Get the centroids of the Large Corner Blobs (Lcb), which are detected by finding
# the nearest centroids to the four corners from the set of centroid points
#
# Order of  image (note that y_i represents the first dimension or rows
# and x_i represents the second dimension or columns)
#    top-left (i03 = x_min, y_min)             top-right (i02 = x_max, y_min)
#
#    bot-left (i01 = x_min, y_max)             bot-right (i00 = x_max, y_max)
 
cx0LcbPPP, cy0LcbPPP, i00 = get_nearest_point(cxPPP, cyPPP, x=pixelsX, y=pixelsY)
cx1LcbPPP, cy1LcbPPP, i01 = get_nearest_point(cxPPP, cyPPP, x=0, y=pixelsY)
cx2LcbPPP, cy2LcbPPP, i02 = get_nearest_point(cxPPP, cyPPP, x=pixelsX, y=0)
cx3LcbPPP, cy3LcbPPP, i03 = get_nearest_point(cxPPP, cyPPP, x=0, y=0)

cx0LcbPSP, cy0LcbPSP, i10 = get_nearest_point(cxPSP, cyPSP, x=pixelsX, y=pixelsY)
cx1LcbPSP, cy1LcbPSP, i11 = get_nearest_point(cxPSP, cyPSP, x=0, y=pixelsY)
cx2LcbPSP, cy2LcbPSP, i12 = get_nearest_point(cxPSP, cyPSP, x=pixelsX, y=0)
cx3LcbPSP, cy3LcbPSP, i13 = get_nearest_point(cxPSP, cyPSP, x=0, y=0)

#cLcbPPP = np.array([[cx0LcbPPP, cx1LcbPPP, cx2LcbPPP, cx3LcbPPP],
#                        [cy0LcbPPP, cy1LcbPPP, cy2LcbPPP, cy3LcbPPP]])
#cLcbPSP = np.array([[cx0LcbPSP, cx1LcbPSP, cx2LcbPSP, cx3LcbPSP],
#                        [cy0LcbPSP, cy1LcbPSP, cy2LcbPSP, cy3LcbPSP]])
#cIndicesLcb = np.array([i00, i01, i02, i03, i10, i11, i12, i13])

if bDEBUG:
    print("\n")
    print("(cx0LcbPPP, cy0LcbPPP, i00) = ", cx0LcbPPP, cy0LcbPPP, i00)
    print("(cx1LcbPPP, cy1LcbPPP, i01) = ", cx1LcbPPP, cy1LcbPPP, i01)
    print("(cx2LcbPPP, cy2LcbPPP, i02) = ", cx2LcbPPP, cy2LcbPPP, i02)
    print("(cx3LcbPPP, cy3LcbPPP, i03) = ", cx3LcbPPP, cy3LcbPPP, i03)
    print("\n")
    print("(cx0LcbPSP, cy0LcbPSP, i10) = ", cx0LcbPSP, cy0LcbPSP, i10)
    print("(cx1LcbPSP, cy1LcbPSP, i11) = ", cx1LcbPSP, cy1LcbPSP, i11)
    print("(cx2LcbPSP, cy2LcbPSP, i12) = ", cx2LcbPSP, cy2LcbPSP, i12)
    print("(cx3LcbPSP, cy3LcbPSP, i13) = ", cx3LcbPSP, cy3LcbPSP, i13)

if bDEBUG:
    show_images(img0=cbimgPPP, img1=cbimgPSP,
                spximg0=[cx0LcbPPP, cx1LcbPPP, cx2LcbPPP, cx3LcbPPP],
                spyimg0=[cy0LcbPPP, cy1LcbPPP, cy2LcbPPP, cy3LcbPPP],
                spximg1=[cx0LcbPSP, cx1LcbPSP, cx2LcbPSP, cx3LcbPSP],
                spyimg1=[cy0LcbPSP, cy1LcbPSP, cy2LcbPSP, cy3LcbPSP],
                txtimg0=['0', '1', '2', '3'], txtimg1=['0', '1', '2', '3'],
                txtcol='r', axtitle0="Lens tilt = 0 deg", 
                axtitle1="Lens tilt = 10 deg",
                figtitle="Correspondences using large corner blobs")

# compute coarse homography using the Larger Corner Blobs (Lcb)
fpLcb = np.array([[cx0LcbPPP, cx1LcbPPP, cx2LcbPPP, cx3LcbPPP],
                  [cy0LcbPPP, cy1LcbPPP, cy2LcbPPP, cy3LcbPPP]])
tpLcb = np.array([[cx0LcbPSP, cx1LcbPSP, cx2LcbPSP, cx3LcbPSP],
                  [cy0LcbPSP, cy1LcbPSP, cy2LcbPSP, cy3LcbPSP]])
hLcb = tutils.get_homography2D(fpLcb, tpLcb)
haLcb = tutils.get_affine2D(fpLcb, tpLcb)

if bDEBUG or True:
    print("\nhLcb (coarse homography) = \n", hLcb)
    print("\nhaLcb (coarse affine homography) = \n", haLcb)

# Improve the homography estimate by ordering all the centroids between the
# "from" (PPP) and "to" image (PSP)
#TODO procedure -- write up the procedure

# remove the corner blobs 
ind2prune = [i00, i01, i02, i03] 
cxPPP, cyPPP = prune_corner_blobs(cxPPP, cyPPP, ind2prune, ind2prune)

ind2prune = [i10, i11, i12, i13]
cxPSP, cyPSP = prune_corner_blobs(cxPSP, cyPSP, ind2prune, ind2prune)

# H × y = y' 
fpMat = np.vstack((cxPPP, cyPPP, np.ones_like(cxPPP)))
# tpMatInit is the matrix "to" points computed from the centroids of the blobs
# in the "to" image
tpMatInit = np.vstack((cxPSP, cyPSP, np.ones_like(cxPSP))) 
tpMatEst = np.dot(hLcb, fpMat) # estimated tpMat

# get mapping order
mappingIndex = get_fp2tp_map_index(tpMatEst[:2,:].T, tpMatInit[:2,:].T)

# rearrange the points (columns of) in the tpMatInit based on the mapping
tpMat = tpMatInit[:, mappingIndex]

if bDEBUG:
    np.set_printoptions(precision=2, linewidth=120, suppress=True)
    print("\ncxPPP: \n", cxPPP)
    print("\ncyPPP: \n", cyPPP)
    print("\nfpMat: \n", fpMat)
    print("\n")
    print("\ncxPSP: \n", cxPSP)
    print("\ncyPSP: \n", cyPSP)
    print("\ntpMatInit: \n", tpMatInit)
    print("\ntpMatEst: \n", tpMatEst)
    print("\nmappingIndex: \n", mappingIndex)
    print("\ntpMat : \n", tpMat)
    
# determine the homography using point correspondences of the smaller blobs

h = tutils.get_homography2D(fpMat, tpMat)
ha = tutils.get_affine2D(fpMat, tpMat)


if bDEBUG or True:
    print("\nh (recomputed homography) = \n", h)
    print("\nha (recomputed affine homography) = \n", ha)

if bDEBUG or True:
    show_images(img0=cbimgPPP, img1=cbimgPSP,
                spximg0=cxPPP.tolist(), spyimg0=cyPPP.tolist(),
                spximg1=cxPSP.tolist(), spyimg1=cyPSP.tolist(),
                txtimg0=range(len(cxPPP)), txtimg1=mappingIndex,
                txtcol='r', axtitle0="Lens tilt = 0 deg", axtitle1="Lens tilt = 10 deg",
                figtitle="Correspondences using smaller blob grid")