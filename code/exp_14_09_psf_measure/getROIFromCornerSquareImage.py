# -*- coding: utf-8 -*-
"""
Purpose: Function to detect ROI identified by blobs. This module is temporary
         Once the ``get_roi_edge_from_blobs()`` function becomes stable/generic
         enough, it shall be moved to a "library-level" module.

Created on Thu Sep 18 21:50:44 2014

@author: Indranil Sinharoy
"""

from __future__ import division, print_function
import numpy as _np
import iutils.pyutils.aputils as _apu
import cv2 as _cv2
import iutils.cvutils.transformutils as _tutils

def _get_centroids_from_blobs(img, expBlobs=4, retBI=False):
    assert img.ndim == 2
    minScaled = 0    #minScaled = int((np.min(img)/65535)*255)
    maxScaled = 255  #maxScaled = int((np.max(img)/65535)*255)
    # Scale image between 0 and 255
    imgScaled = _apu.rescale(img, low=minScaled, high=maxScaled).astype(_np.uint8)

    threshold = int(maxScaled*0.75)
    imgBin = (imgScaled > threshold).astype(_np.uint8)

    if retBI: # for debug purposes.
        imgBinRet = imgBin.copy()

    # morphological operations to fill holes
    kernel = _np.ones((10, 10), _np.uint8)
    imgMorph = _cv2.morphologyEx(imgBin, _cv2.MORPH_CLOSE, kernel)

    cx = [] # along columns
    cy = [] # along rows

    # Get the centroid, by calculating contours, and moments
    contours, _ = _cv2.findContours(imgMorph, _cv2.RETR_LIST, _cv2.CHAIN_APPROX_SIMPLE)

    assert len(contours) == expBlobs, ("Expecting {} blobs. Found {} blobs! "
                                       "Threshold = {}, Maximum scaled value = {}"
                                       .format(expBlobs, len(contours),
                                               threshold, maxScaled))

    #print("Number of contours: ", len(contours))
    #invalidMomentsCts = 0
    for cnt in contours:
        mom = _cv2.moments(cnt)
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
        return cx, cy, imgBinRet
    else:
        return cx, cy


def get_roi_edge_from_blobs(img, gBand=20, expBlobs=4, retBI=False):
    """Returns boundary rows and columns of ROI identified by blobs

    The function estimates the center of masses of the blobs in the image. It
    calculates the outer boundary rows and columns that defines the ROI
    by selecting the furthest row/column from the center of the image.

    Parameters
    ----------
    img : ndarray
        single channel (2D) image that has the ROI demarcated by blobs.
    gBand : integer, optional
        number of pixels of guard band around the estimated boundary rows and
        columns
    expBlobs : integer, optional
        expected number of blobs in the image. If the number of detected blobs
        does not equal ``expBlobs``, an assertion is invoked.
    retBI : bool, optional
        if ``True`` the function returns the binary image that was used to
        detect blobs (for debugging purpose)

    Returns
    -------
    rowMin : integer
        top boundary row index
    rowMax : integer
        bottom boundary row index
    colMin : integer
        left boundary column index
    colMax : integer
        right boundary column index
    imgBinRet : ndarray (2D), only if ``retBI`` is ``True``
        the binary image, for debugging purpose

    Notes
    -----
    The function does scales and converts the values in the image ``img`` to
    8 bit unsigned int values internally.
    """
    cx, cy, imgBinRet = _get_centroids_from_blobs(img, expBlobs, True)
    #print("cx", cx)
    #print("cy", cy)
    rowMin, rowMax = min(cy) - gBand, max(cy) + gBand
    colMin, colMax = min(cx) - gBand, max(cx) + gBand
    if retBI:
        return rowMin, rowMax, colMin, colMax, imgBinRet
    else:
        return rowMin, rowMax, colMin, colMax
    #return cx, cy, imgBinRet

def _sort_array(arr, method='norm'):
    """Return array with its columns sorted using ``method``
    """
    if method == 'norm':
        ret = arr[:, _np.linalg.norm(arr, axis=0).argsort()]
    else:
        raise NotImplemented
    return ret

##TODO!!!
def _sort_cordinates(cords, method='nearestCorner'):
    pass


def get_homography_from_blobs(img1, img2, expBlobs=4, useOpenCV=False, retCentroids=False):
    """Returns the homography matrix H
    """
    assert img1.ndim == 2
    assert img2.ndim == 2
    cx1, cy1 = _get_centroids_from_blobs(img1, expBlobs=4) # from image 1
    cx2, cy2 = _get_centroids_from_blobs(img2, expBlobs=4) # from image 2

    #print("Centroids cx1: ", cx1)
    #print("Centroids cy1: ", cy1)
    #print("Centroids cx2: ", cx2)
    #print("Centroids cy2: ", cy2)

    # construct fp and tp
    # fp = np.array([[x0, x1, ...], [y0, y1, ...]])
    fp = _np.vstack((cx1, cy1))
    tp = _np.vstack((cx2, cy2))

    # Need to order the centroids in image 1 and image2 in the same way
    fp = _sort_array(fp)
    tp = _sort_array(tp)

    if useOpenCV:
        # fp = [[x0, y0], [x1, y1], [x2, y2], ...]
        fp = (fp.T).astype(_np.float)
        tp = (tp.T).astype(_np.float)
        #print("Calculating homography using OpenCV")
        #print("fp"); print(fp.astype(_np.uint))
        #print("tp"); print(tp.astype(_np.uint))
        H, _ = _cv2.findHomography(srcPoints=fp, dstPoints=tp, method=0)
    else:
        # fp = np.array([[x0, x1, ...], [y0, y1, ...], [w0, w1, ...]])
        fp = _np.vstack((fp, _np.ones(expBlobs)))
        tp = _np.vstack((tp, _np.ones(expBlobs)))
        #print("Calculating homography using iutils lib")
        #print("fp"); print(fp.astype(_np.uint))
        #print("tp"); print(tp.astype(_np.uint))
        H = _tutils.get_homography2D(fp, tp)
    if retCentroids:
        return H, fp, tp
    else:
        return H


# ###############################################################
# Test functions and helper functions for the test function
# ##############################################################

def _get_captured_images(tilted=False, sensor='Sinar86H'):
    """function returns physically captured images for testing the function

    Parameters
    ----------
    tilted : bool, optional
        if ``True``, the function returnes the image for which the target was
        tilted
    sensor : string, optional
        string identifying the digital sensor. options are ``Sinar86H``, `DMK??`

    Returns
    -------
    img : ndarray
    """
    if sensor=='Sinar86H':
        if tilted:
            imf = "C:\\thesis_images\\2014_09_17_psfmeasurement\\40_degrees_Focused\\CornerSquares.tif"
            bff = "C:\\thesis_images\\2014_09_17_psfmeasurement\\40_degrees_Focused\\DarkFrame.tif"
        else:
            imf = "C:\\thesis_images\\2014_09_17_psfmeasurement\\zero_degrees\\CornerSquares.tif"
            bff = "C:\\thesis_images\\2014_09_17_psfmeasurement\\zero_degrees\\DarkFrame.tif"
    elif sensor=='DMK??':
        pass
    img = tf.imread(imf)
    bif = tf.imread(bff)
    return img, bif

def _draw_corner_squares(src, sizePixels, val):
    """renders corner blobs in the green channel
    """
    rowPx, colPx, _ = src.shape
    #
    rowStart = [0, 0, rowPx - sizePixels, rowPx - sizePixels]
    rowEnd = [sizePixels, sizePixels, rowPx, rowPx]
    colStart = [0, colPx - sizePixels, 0, colPx - sizePixels]
    colEnd = [sizePixels, colPx, sizePixels, colPx]
    for k in range(4):
        #for i in range(3):
        src[rowStart[k]:rowEnd[k], colStart[k]:colEnd[k], 1] = val

def _get_synthetic_images(bit=8, rc=(200, 200), noisy=False):
    """generates corner blob image, and dark frame image

    Parameters
    ----------
    bit : integer, optional
        8 bit or 16 bit image for simulation
    rc : tuple, optional
        row and column size of the image
    noisy : bool, optional
        whether to simulate noise

    Returns
    -------
    img : ndarray (3D)
        synthetic blob image
    bif : ndarray (3D)
        synthetic dark frame image
    """
    # TODO! #1
    # for tilted image, the values should be lower
    # TODO! #2
    # simulation of noisy images ...
    print("Synthesizing {}-bit image of shape ({},{}).".format(bit, rc[0], rc[1]))
    if bit==8:
        dt = _np.uint8
        val = 250
    elif bit==16:
        dt = _np.uint16
        val = 65533

    img = _np.zeros((rc[0], rc[1], 3), dtype=dt)
    bif = img.copy()
    _draw_corner_squares(src=img, sizePixels=15, val=val)
    return img, bif



def _test_get_roi_edge_from_blobs(syntheticImage=False, tilted=False,
                                  sim16bit=True, simNoise=True):
    """Test function, will execute when the module is executed directly
    (i.e. not imported)
    """
    # TODO! #1
    # Create synthetic image both 8 bit and 16 bit values with noise to test
    # and tune the morphological operations
    # TODO! #2
    # Try to use an addpative thresholding algorithm to better

    if syntheticImage:
        bit = 16 if sim16bit else 8
        img, bif = _get_synthetic_images(bit=bit)
    else:
        bTilt = True if tilted else False
        img, bif = _get_captured_images(tilted=bTilt)

    # Extract the green plane
    img = img[:,:,1].astype(_np.int32)
    bif = bif[:,:,1].astype(_np.int32)

    img = img - bif
    #print(np.max(img))
    #print(np.min(img))
    rowMin, rowMax, colMin, colMax, binImg = get_roi_edge_from_blobs(img, 0, retBI=True)

    #cx, cy, binImg = get_rows_cols_of_target_area(img, 0, retBinImg=True)
    print(rowMin, rowMax, colMin, colMax)

    # plot to see the centroids
    fig, ax = plt.subplots(1, 1, figsize=(16, 12))
    ax.imshow(img, 'gray')
    cx = [colMin, colMax, colMin, colMax]
    cy = [rowMin, rowMin, rowMax, rowMax]
    ax.scatter(cx, cy, s=20, c='r') # c=['r', 'g', 'b', 'y'])
    ayMax, axMax = img.shape
    ax.set_xlim(0, axMax)
    ax.set_ylim(ayMax, 0)
    fig.tight_layout()
    plt.show()

def _test_get_homography_from_blobs():

    # untilted image
    img1, bif1 = _get_captured_images(tilted=False)
    # Extract the green plane
    img1 = img1[:,:,1].astype(_np.int32)
    bif1 = bif1[:,:,1].astype(_np.int32)
    img1 = img1 - bif1
    del bif1
    # tilted image
    img2, bif2 = _get_captured_images(tilted=True)
    img2 = img2[:,:,1].astype(_np.int32)
    bif2 = bif2[:,:,1].astype(_np.int32)
    img2 = img2 - bif2
    del bif2
    H1, fp, tp = get_homography_from_blobs(img1, img2, expBlobs=4, retCentroids=True)
    H2 = get_homography_from_blobs(img1, img2, expBlobs=4, useOpenCV=True)
    print("\nHomography using iutils lib:\n", H1)
    print("\nHomography using OpenCV:\n", H2)

    # Check to see the homography error
    to_pts_est = _np.dot(H1, fp)
    to_pts_est = to_pts_est/to_pts_est[-1] # set scale to 1

    # plot to see the centroids
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(16, 12))
    from_ptsX = fp[0,:]
    from_ptsY = fp[1,:]
    to_ptsX = tp[0,:]
    to_ptsY = tp[1,:]
    to_pts_estX = to_pts_est[0,:]
    to_pts_estY = to_pts_est[1,:]
    print("\nFrom Points")
    print("X ", from_ptsX)
    print("Y ", from_ptsY)
    print("\nTo Points")
    print("X ", to_ptsX)
    print("Y", to_ptsY)
    print("\nExtimated to_pts from Homography:")
    print((to_pts_est[:2]).astype(_np.uint))

    ax1.imshow(img1, 'gray')
    ax1.scatter(from_ptsX, from_ptsY, s=20, c=['r', 'g', 'b', 'y'])
    ax2.imshow(img2, 'gray')
    ax2.scatter(to_ptsX, to_ptsY, s=15, c=['r', 'g', 'b', 'y'])
    ax2.scatter(to_pts_estX, to_pts_estY, s=20, marker= '+',
                c=['magenta', 'lime', 'cyan', 'orange'])
    plt.show()


if __name__ == "__main__":
    import matplotlib.pyplot as plt
    #from matplotlib.pylab import ginput
    #import iutils.opticsutils.plotutils as opt
    #import iutils.plotutils.mplutils as mpu
    # import Christoph Gholke's tifffile module
    import iutils.imageutils.tifffile.tifffile as tf
    # test using synthetic image
    #_test_get_roi_edge_from_blobs(syntheticImage=True)
    # test using real image
    #_test_get_roi_edge_from_blobs(syntheticImage=False, tilted=False)
    #_test_get_roi_edge_from_blobs(syntheticImage=False, tilted=True)
    _test_get_homography_from_blobs()