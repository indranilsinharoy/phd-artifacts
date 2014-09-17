# -*- coding: utf-8 -*-
"""
Purpose: code to generate double bar pattern that will be used as source
         input image for image simulation in zemax
Created on Sun Sep 14 13:43:34 2014

@author: Indranil
"""
from __future__ import division
import numpy as np
import matplotlib.pyplot as plt

numPxRows = 800
numPxCols = 800
dpi = 100

offset = 50
thickness = 2

arr = np.zeros((numPxRows, numPxCols), dtype=np.uint8)
arr[:, offset-thickness/2:offset+thickness/2] = 1
arr[:, numPxCols-offset-thickness/2:numPxCols-offset+thickness/2] = 1

#print offset-thickness/2, offset+thickness/2

figsize = (numPxCols/dpi, numPxRows/dpi)
fig = plt.figure(figsize=figsize, edgecolor='r', frameon=False)
fig.set_clip_on(False)
ax = fig.add_axes([0.0, 0.0, 1.0, 1.0])
ax.set_frame_on(False)  # Important
ax.patch.set_visible(False)
ax.xaxis.set_visible(False)
ax.yaxis.set_visible(False)


ax.imshow(arr, 'gray', interpolation='none')

# save figure
fname="C:\Users\Indranil\Documents\ZEMAX\IMAFiles\doublebar.png"
plt.savefig(fname, dpi=dpi, bbox_inches='tight', pad_inches=0.0, frameon=False)

plt.show()
