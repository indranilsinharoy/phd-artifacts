Date: 09-01-2014
================

Experiment: 
-----------
Measure PSF on a tilted image plane and compare with rigid camera PSFs for 3 
points close to the optical axis (satisfying paraxial conditions)


Back of the envelope calculations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
import iutils.exputils.imaging as eiu
m = eiu.mag(180, u=3000)                  
m
Out[3]: 0.06382978723404255         # magnification (u = 3 m)
sensor_px = 6.0
sensor_px_proj = 6/m
sensor_px_proj
Out[6]: 94.00000000000001           # sensor pixel in object space
ppi = eiu.get_ppi('surface_pro3')
ppi
Out[8]: 216
display_px_obj_space = eiu.ppi2microns(ppi)
display_px_obj_space
Out[10]: 117.5925925925926          # size of a display pixel
m2 = eiu.mag(180, u=2000)           # magnification if u = 2 m (expt. not done)
sensor_px_proj2 = 6.0/m2
sensor_px_proj2
Out[13]: 60.66666666666667          # sensor pixel in object if u = 2m


Experimental setup
~~~~~~~~~~~~~~~~~~

[Image]

Object distance
```````````````
u = around 3 meters

Exposure settings for Sinar camera:
```````````````````````````````````

Both images were exposed using 4-shot capture .... i.e. the pixel size is
6 um.


PSF_Measurement_9_3_1
~~~~~~~~~~~~~~~~~~~~~
ISO: 50
Time : 1 sec
Aperture* : f/8


PSF_Measurement_9_3_2
~~~~~~~~~~~~~~~~~~~~~
ISO: 100
Time : 4 sec
Aperture* : f/32

* aperture value is the aperture set in the lens standard, and it doesn't
account for the image distance, i.e. it is not the relative aperture.