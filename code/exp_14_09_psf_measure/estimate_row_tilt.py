# -*- coding: utf-8 -*-
"""
Purpose : Estimate row about which the target is tilted

Created on Sun Sep 14 15:26:22 2014

@author: Indranil
"""

from __future__ import division, print_function
import numpy as np
from scipy.misc import imread
import matplotlib.pyplot as plt
import iutils.plotutils.mplutils as mpu




ifname = "C:\Users\Indranil\Documents\ZEMAX\IMAFiles\double_bar_image_simulation.png"
img = imread(ifname, flatten=True)


# Threshold
# ##########
#print(np.max(img))
#print(np.min(img))
noise_gray_level = 5
img[img > noise_gray_level] = 255
img[img <= noise_gray_level] = 0


# Sum rows
# ########
row_sums = np.sum(img, axis=1)
# set row_sums with zero values to nan
row_sums[row_sums==0] = np.nan

fig, axes = plt.subplots(1, 2)
ax0, ax1 = axes.flat

ax0.imshow(img, 'gray', interpolation='none')
#mpu.set_spines(ax, setinvisible=True)
ax1.plot(row_sums)

plt.show()


