# -*- coding: utf-8 -*-
"""
Purpose : code to quickly process image data generated by the Scheimpflug
          camera.

Created on Tue Sep 09 02:43:27 2014

@author: Indranil
"""
from __future__ import division, print_function
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pylab import ginput
import iutils.pyutils.aputils as apu
import iutils.opticsutils.plotutils as opt
# import Christoph Gholke's tifffile module
import iutils.imageutils.tifffile.tifffile as tf

# helper functions
def get_crop_para(camera=0, centralRegion=True, row_off_ctr=0, col_off_ctr=0, blockSize=200):
    """returns start row, col numbers, and total numbers of rows and columns
    to slice from the image array

    Parameters
    ----------
    camera : integer
        integer code for the camera used. 0 = sinar, 1 = ic capture
    centralRegion : bool
        defines how much to crop. If ``True`` (default), only the central (much
        smaller region will be cropped). If ``False``, the full target as defined
        by the borders will be cropped
    row_off_ctr : integer
        row offset (offset in vertical direction), in pixels, of the target
        center from the image center in image space. See notes
    col_off_ctr :
        col offset (offset in the horizontal direction), in pixels, of the target
        center from the image center in image space. See notes

    Returns
    -------
    cropPara : tuple of integers
        start_row, start_col, total_rows, total_cols

    Notes
    -----
    We can have a non-zero ``row_off_center`` and/or ``col_off_center`` value if
    the laser point (represent the optical axis) on the target did not coinside
    with the target center.
    """
    if camera == 0:
        res_rows, res_cols = 6000, 8000
        if centralRegion:
            roi_rows, roi_cols = blockSize, blockSize
        else:
            roi_rows, roi_cols = 1765, 2630
            #start_row = 2585; #start_col = 2510; #total_rows = 1765; #total_cols = 2630
        start_row = (res_rows//2 - roi_rows//2) + row_off_ctr
        start_col = (res_cols//2 - roi_cols//2) + col_off_ctr
        total_rows = roi_rows
        total_cols = roi_cols
    else:
        pass  # not yet defined
    return start_row, start_col, total_rows, total_cols


def get_crop_parameters_from_user(img):
    fig, ax = plt.subplots(1, 1, figsize=(8,6))
    img = img.astype(np.uint32)
    img = img/np.max(img)
    ax.imshow(img)
    ax.set_title('Select 4 points')
    pts = ginput(4)
    plt.show()
    print(pts)

    return


# main logic starts here
#imf = "C:\\thesis_images\\2014_09_05_psfmeasurement\\14_09_05_psf_measurement03.tif"
#bff = "C:\\thesis_images\\2014_09_05_psfmeasurement\\14_09_05_psf_measurement01.tif"
# rowOffCtr, colOffCtr = 467, -175

#imf = "C:\\thesis_images\\2014_09_14_psfmeasurement\\tilt_0_degree\\DotPattern.tif"
#bff = "C:\\thesis_images\\2014_09_14_psfmeasurement\\tilt_0_degree\\DarkFrame.tif"
#rowOffCtr, colOffCtr = -45, 137

#imf = "C:\\thesis_images\\2014_09_14_psfmeasurement\\tilt_35_degree\\DotPattern.tif"
#bff = "C:\\thesis_images\\2014_09_14_psfmeasurement\\tilt_35_degree\\DarkFrame.tif"
#rowOffCtr, colOffCtr = 55, 132


imf = "C:\\thesis_images\\2014_09_15_psfmeasurement\\40degrees\\DotPattern_F16Ap_15secExp.tif"
bff = "C:\\thesis_images\\2014_09_15_psfmeasurement\\40degrees\\DarkFrame_F16Ap_15secExp.tif"
rowOffCtr, colOffCtr = -45, 137


g_GET_CROP_PARA_USER = False

# Read in the image file
img = tf.imread(imf)
bframe = tf.imread(bff)

# cropping parameters
if g_GET_CROP_PARA_USER:
    get_crop_parameters_from_user(img)
else:
    start_row, start_col, tot_rows, tot_cols = get_crop_para(camera=0,
                                                             centralRegion=True,
                                                             row_off_ctr=rowOffCtr,
                                                             col_off_ctr=colOffCtr,
                                                             blockSize=50)
red, green, blue = 0, 1, 2
img = img[start_row:start_row + tot_rows, start_col:start_col + tot_cols,
          green]
bframe = bframe[start_row:start_row + tot_rows, start_col:start_col + tot_cols,
                green]

# TODO !!
# create a bframe that is per-pixel median of a few  frames


# Sinar 86H outputs 16 bits/channel of data. We will also be doing operations
# such as subtracting etc, with might produce -ve values in the intermediate
# steps. This is the reason, we need to convert the array to signed 32 bits

img = img.astype(np.int32)
bframe = bframe.astype(np.int32)

print(img.dtype)
print(bframe.dtype)

img_bfr = img - bframe

max_val_img = np.max(img)
max_val_bframe = np.max(bframe)
max_val_img_bfr = np.max(img_bfr)
min_val_img_bfr = np.min(img_bfr)

print(img_bfr.dtype)

# print info
print("Before any processing")
print("Max value in img", max_val_img)
print("Max value in bframe", max_val_bframe)
print("Max value in substracted frame", max_val_img_bfr)
print("Min value in subtracted frame", min_val_img_bfr)

# Scale all values by the max of the image frame
img = img/max_val_img
bframe = bframe/max_val_img
img_bfr = img_bfr/max_val_img

#max_val_stack = max([np.max(img), np.max(bframe)])
#min_val_stack = min([np.min(img), np.min(bframe)])

# print info
max_val_img_afternorm = np.max(img)
min_val_img_afternorm = np.min(img)
max_val_bframe_afternorm = np.max(bframe)
min_val_bframe_afternorm = np.min(bframe)
max_val_img_bfr_afternorm = np.max(img_bfr)
min_val_img_bfr_afternorm = np.min(img_bfr)




print("\nAfter dividing by max_val_img")
print("Max value in img", max_val_img_afternorm)
print("Min value in img", min_val_img_afternorm)
print("Max value in bframe", max_val_bframe_afternorm)
print("Min value in bframe", min_val_bframe_afternorm)
print("Max value in substracted frame", max_val_img_bfr_afternorm)
print("Min value in subtracted frame", min_val_img_bfr_afternorm)


#
max_val_stack = max((max_val_img_afternorm, max_val_bframe_afternorm, max_val_img_bfr_afternorm))
min_val_stack = min((min_val_img_afternorm, min_val_bframe_afternorm, min_val_img_bfr_afternorm))
img = img - min_val_stack
bframe = bframe - min_val_stack
img_bfr = img_bfr - min_val_stack

#img_bfr[img_bfr < 0/255.] = 0.0 # NOT correct logic .....

#img = apu.rescale(img, low=min_val_stack, high=max_val_img_afternorm-min_val_stack)
#bframe = apu.rescale(bframe, low=min_val_stack, high=max_val_bframe_afternorm-min_val_stack)
#img_bfr = apu.rescale(img_bfr, low=min_val_stack, high=max_val_img_bfr_afternorm-min_val_stack)

print("\nFinally for display")
print("Max value in img", np.max(img))
print("Min value in img", np.min(img))
print("Max value in bframe", np.max(bframe))
print("Min value in bframe", np.min(bframe))
print("Max value in subtracted frame", np.max(img_bfr))
print("Min value in subtracted frame", np.min(img_bfr))

fig, ax = plt.subplots(1, 3)
ax0, ax1, ax2 = ax.flat
col = opt.intensityPSF_Fire(1000)
ax0.imshow(img, cmap=col, interpolation='none', vmax=1, vmin=0)
ax1.imshow(bframe, cmap=col, interpolation='none', vmax=1, vmin=0)
ax2.imshow(img_bfr, cmap=col, interpolation='none', vmax=1, vmin=0)
fig.tight_layout()
plt.show()