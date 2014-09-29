# -*- coding: utf-8 -*-
"""
Purpose: To understand the Python Imaging Source library and test if it works
         with the Imaging Source camera

Created on Mon Sep 22 12:10:02 2014

@author: adapted from https://github.com/morefigs/py-ic-imaging-control
"""
from __future__ import division, print_function
import math as math
from PIL import Image
import pyicic.IC_ImagingControl as imgCtrl
import pyicic.IC_Exception as icException

# Open and initialize Imaging Control lib
ic = imgCtrl.IC_ImagingControl()
ic.init_library()

# Open first available camera device
cam_names = ic.get_unique_device_names()
print("Camera devices found: ", cam_names)
cam = ic.get_device(cam_names[0])
cam.open()

# ###################################
# Set camera and exposure parameters
# ###################################

# Set Gain
# Range of gain [4 - 31]. Gain value of "4" (minimum possible value) corresponds
# to 0 dB gain
cam.gain.auto = False       # Manual gain
cam.gain = 10

# Exposure
# Only the following values of exposure in milli-seconds are possible for DMx 72BUC02 :
# 0.1221, 0.2441, 0.4883, 0.9766, 1.9531, 3.9063, 7.8125, 15.625, 31.25, 62.5,
# 125, 250, 500, 1000, 2000, 4000, 8000, 16000
# However, the exposure is specified in Direct Show's Physical Value interface
# (in log2n) form, thus the exposure range is [-13, 4]
expMilliSec = 100
exp = int(round(math.log(expMilliSec/1000, 2)))
emin = cam.exposure.min
emax = cam.exposure.max
assert emin <= exp <= emax, "Exposure out of valid range"
cam.exposure.value = exp

# Frame rate
# Frame Rate in frames per second; Only the following values are possible:
# 5.9870, 5.0000, 4.0000, 3.0000, 2.0000, 1.0000, 0.7120
fRate = [5.9870, 5.0000, 4.0000, 3.0000, 2.0000, 1.0000, 0.7120]
cam.set_frame_rate(fRate[4])

# Video format
vidFormat = 'Y800 (2592x1944)'
cam.set_video_format(vidFormat)

# Sink type format (required to set before using snap_image())
# 0 = Y800, 1 = RGB24, 2 = RGB32, 3 = UYVY, 4 = Y16, 5 = NONE (used as return value)
sinkFormat = 1
cam.set_format(sinkFormat)

# ##############################################
# Capture and save `numPics` images
# #############################################
cam.start_live(show_display=False)
timeout = expMilliSec # Milliseconds
numPics = 5
for i in range(numPics):
    try:
        cam.snap_image()
    except Exception as ex:
        print("Image capture failed with ", icException.IC_Exception(ex).message)
    else:
        # Save image using PIL
        print("Captured frame ", i+1)
        data, imgWidth, imgHeight, imgDepth = cam.get_image_data()
        img = Image.frombuffer('RGB', (imgWidth, imgHeight), data, 'raw', 'RGB', 0 , 1)
        img.save("test_{}.tif".format(i+1))
cam.stop_live()
cam.close()
ic.close_library()