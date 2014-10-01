# -*- coding: utf-8 -*-
"""
Purpose : code compare the following three cases
          1. PSFs in rigid camera configuration
          2. PSFs when target is tilted but unfocused as camera is still rigid
          3. PSFs when target is tilted and focused using scheimpflug

Created on Tue Sep 19, 2014

@author: Indranil
"""
from __future__ import division, print_function
import numpy as np
import matplotlib.pyplot as plt
import iutils.pyutils.aputils as apu
import iutils.opticsutils.plotutils as opt
import iutils.plotutils.mplutils as mpu
# import Christoph Gholke's tifffile module
import iutils.imageutils.tifffile.tifffile as tf
from getROIFromCornerSquareImage import get_roi_edge_from_blobs, get_homography_from_blobs




# ################################
# Main logic starts here
# ################################

# Set 1
imf_0 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\zero_degrees\\DotPattern.tif"
bff_0 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\zero_degrees\\DarkFrame.tif"
cif_0 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\zero_degrees\\CornerSquares.tif"
dbif_0 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\zero_degrees\\DoubleBars.tif"

# Set 2
imf_1 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\40_degrees_Focused\\DotPattern.tif"
bff_1 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\40_degrees_Focused\\DarkFrame.tif"
cif_1 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\40_degrees_Focused\\CornerSquares.tif"
dbif_1 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\zero_degrees\\DoubleBars.tif"

# Set 3
imf_2 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\40_degrees_NotFocused\\DotPattern.tif"
bff_2 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\40_degrees_NotFocused\\DarkFrame.tif"
cif_2 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\40_degrees_NotFocused\\CornerSquares.tif"
dbif_2 = "C:\\thesis_images\\2014_09_17_psfmeasurement\\zero_degrees\\DoubleBars.tif"

totSets = 3

# Program control parameters
sensor = 'Sinar86H'
cornerSquareImageAvailable = True

# Channel code
red, green, blue = 0, 1, 2

# Estimate cropping parameters and homographies
rmin, rmax, cmin, cmax = [0]*totSets, [0]*totSets, [0]*totSets, [0]*totSets
Hstack = []
refImgNum = 0  # the un-tilted image set number

# First pass -- detect corners and determine cropping parameters
for i in range(totSets):
    cimg = tf.imread(eval('cif_{}'.format(i)))
    bframe = tf.imread(eval('bff_{}'.format(i)))
    cbimg = cimg[:,:,green].astype(np.int32) - bframe[:,:,green].astype(np.int32)
    # cropping parameters
    cropPara = get_roi_edge_from_blobs(cbimg, gBand=0, expBlobs=4)
    rmin[i], rmax[i], cmin[i], cmax[i] = cropPara
    # delete the cornerSquare and bframe images to save memory
    del cimg
    del bframe


guardBand = 100 # pixels on all sides
rs = min(rmin) - guardBand
re = max(rmax) + guardBand
cs = min(cmin) - guardBand
ce = max(cmax) + guardBand


# Second pass -- estimate homography using the cropped images
for i in range(totSets):
    cimg = tf.imread(eval('cif_{}'.format(i)))
    bframe = tf.imread(eval('bff_{}'.format(i)))
    cbimg =  ( cimg[rs:re, cs:ce, green].astype(np.int32)
             - bframe[rs:re, cs:ce, green].astype(np.int32))
    if i==refImgNum:
        refimg = cbimg.copy()
    # Homography
    H = get_homography_from_blobs(refimg, cbimg)
    Hstack.append(H)
    # delete the cornerSquare and bframe images to save memory
    del cimg
    del bframe


## Some debug printing
#print("rmin", rmin)
#print("rmax", rmax)
#print("cmin", cmin)
#print("cmax", cmax)
#
#print("rs, re, cs, ce :", rs, re, cs, ce)
#
#for i in range(totSets):
#    print("Row range of set {} ".format(i), rmax[i] - rmin[i])
#    print("Col range of set {} ".format(i), cmax[i] - cmin[i])
#    print("Overall row range :", re - rs)
#    print("Overall col range :", ce - cs)
#
#l = len(Hstack)
##print("Number of Homographies: ", l)
#for i in range(l):
#    print("Homography number {}:".format(i))
#    print(Hstack[i])


# Find rotation axis from the homography
#y = range(rs, re)
#x = 0



# Read images
#i=0
img_0 = tf.imread(imf_0).astype(np.int32)
bframe = tf.imread(bff_0).astype(np.int32)
#rs, re, cs, ce = rmin[i], rmax[i], cmin[i], cmax[i]
img_0 = img_0[rs:re, cs:ce, green] - bframe[rs:re, cs:ce, green]
#img_0 = img_0[:, :, green] - bframe[:, :, green]
del bframe

##i = 1
#img_1 = tf.imread(imf_1).astype(np.int32)
#bframe = tf.imread(bff_1).astype(np.int32)
##rs, re, cs, ce = rmin[i], rmax[i], cmin[i], cmax[i]
##img_1 = img_1[rs:re, cs:ce, green] - bframe[rs:re, cs:ce, green]
#img_1 = img_1[:, :, green] - bframe[:, :, green]
#del bframe

#i = 2
img_2 = tf.imread(imf_2).astype(np.int32)
bframe = tf.imread(bff_2).astype(np.int32)
#rs, re, cs, ce = rmin[i], rmax[i], cmin[i], cmax[i]
img_2 = img_2[rs:re, cs:ce, green] - bframe[rs:re, cs:ce, green]
#img_2 = img_2[:, :, green] - bframe[:, :, green]
del bframe


# Scaling for display
normMethod = 'individual'  # or 'global'

if normMethod == 'individual':
    img_0 = apu.rescale(img_0, low=0, high=1)
    #img_1 = apu.rescale(img_1, low=0, high=1)
    img_2 = apu.rescale(img_2, low=0, high=1)
elif normMethod == 'global':
    # Rescale the images for displaying
    #minStack = min(np.min(img_0), np.min(img_1), np.min(img_2))
    #maxStack = max(np.max(img_0), np.max(img_1), np.max(img_2))
    #
    #scalingFac = 1.0/(maxStack - minStack)
    #img_0 = (img_0 - minStack)*scalingFac
    #img_1 = (img_1 - minStack)*scalingFac
    #img_2 = (img_2 - minStack)*scalingFac
    pass

#print(np.min(img_0), np.max(img_0))
#print(np.min(img_1), np.max(img_1))
#print(np.min(img_2), np.max(img_2))


# Figure

col = opt.intensityPSF_Fire(1000)

#fig, axes = plt.subplots(1, 3, figsize=(16, 8), sharex=True, sharey=True)
#ax0, ax1, ax2 = axes.flat
#ax0.imshow(img_0, cmap=col, interpolation='none', vmax=1, vmin=0)
#ax1.imshow(img_1, cmap=col, interpolation='none', vmax=1, vmin=0)
#ax2.imshow(img_2, cmap=col, interpolation='none', vmax=1, vmin=0)
#fig.tight_layout()
#plt.show()

#imgCmptr = mpu.ImageComparator(numSubPlots=3, Hlist=Hstack[1:], fsize=(16,10))
#imgCmptr.imshow(img_0, 0, col, title='Rigid cam')
#imgCmptr.imshow(img_1, 1, col, title='Tilted not focused')
#imgCmptr.imshow(img_2, 2, col, title='Tilted focused')
#imgCmptr.show()

imgCmptr = mpu.ImageComparator(numSubPlots=2, Hlist=Hstack[2:], fsize=(16,10))
imgCmptr.imshow(img_0, 0, cmap=col,
                title=r'$\alpha = 0 \degree, \; \beta = 0 \degree$', fontsize=18)
imgCmptr.imshow(img_2, 1, cmap=col,
                title=r'$\alpha = 3.1 \degree, \; \beta = 40 \degree$', fontsize=18)
mpu.set_ticks(ax=imgCmptr._axlist[0], numTicksX=10, numTicksY=20,
              xlim=(0, ce-cs), ylim=(0, re-rs))
mpu.set_ticks(ax=imgCmptr._axlist[1], numTicksX=10, numTicksY=20,
              xlim=(0, ce-cs), ylim=(0, re-rs))
imgCmptr.show()
