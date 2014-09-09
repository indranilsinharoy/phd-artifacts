Lab notes, September 2014
=========================

.. refer to http://docutils.sourceforge.net/docs/user/rst/quickref.html for quick
   info into reStructuredText

Date: 09-03-2014; Experiment: PSF measurement on tilted plane 
-------------------------------------------------------------

Goal
~~~~~
Measure PSF on a tilted image plane and compare with rigid camera PSFs for 3 
points close to the optical axis (satisfying paraxial conditions)


Back of the envelope calculations
`````````````````````````````````

.. code:: code python

    >>> import iutils.exputils.imaging as eiu
    >>> m = eiu.mag(180, u=3900)              
    >>> m                                     # magnification (u = 3.9 m)
    0.04838709677419355           
    >>> sensor_px = 6.0                        # micron
    >>> sensor_px_obj_space = sensor_px/m
    >>> sensor_px_obj_space                    # sensor pixel in object space
    124.0
    >>> ppi = eiu.get_ppi('surface_pro3')
    >>> ppi
    216
    >>> display_px_obj_space = eiu.ppi2microns(ppi) # size of a display pixel
    >>> display_px_obj_space
    117.5925925925926 


Experimental setup
``````````````````

.. figure:: images/expt_psfmeasure_basic_setup_hand_schematic.png
    :alt: schematic of experimental setup
    :align: center

    *Fig: Schematic of experimental setup*

.. Note that currently pandoc doesn't support image scaling natively. So 
   the rst directives "height", "width", and "scale" are not working (or that
   is what I think is happening.) So, scale images externally.

Target
++++++

The target of point sources were generated using the code ``\code\exp_14_09_psf_measure.py`` 
and renderend on a Surface Pro 3 tablet (pixel size of 117.6 um). Each point 
source are essentially a spatial mixture of RGB values as shown in the image 
below:

.. figure:: images/expt_psfmeasure_tgt_9_3_centered.png
    :alt: point source target (full size)

    *Fig: Point source target image (full size)*

.. figure:: images/expt_psfmeasure_tgt_9_3_centered_cropped.png
    :alt: cropped point source target image

    *Fig: Zoomed-in central portion of the point source target image*


*Object distance*

u = around 3.9 meters

*Exposure settings for Sinar camera:*

Both images were exposed using 4-shot capture. Hence, i.e. the pixel size is
natively 6 um.



*Image: PSF_Measurement_9_3_1*

.. figure:: images/expt_psfmeasurement_9_3_1_centerCropped.png
    :alt: schematic of experimental setup
    :align: center

    *Fig: Image of the central portion of the points sources. Sinar camera 
    settings: ISO: 50; Time: 1 sec; Aperture: f/8*


*Image: PSF_Measurement_9_3_2*

.. figure:: images/expt_psfmeasurement_9_3_2_centerCropped.png
    :alt: schematic of experimental setup
    :align: center

    *Fig: Image of the central portion of the points sources. Sinar camera 
     settings: ISO: 100; Time: 4 sec; Aperture: f/32*


Note that the "aperture" value is the aperture set in the lens standard, and it doesn't account for the image distance, i.e. it is not the relative aperture.


Comments
````````

1. It is very evident from the above images, that the camera was not properly
   focused on the target. The blur is very clear in "PSF_Measurement_9_3_1". 
   In "PSF_Measurement_9_3_2", the blur spot is smaller because of the use of
   smaller (f/32) aperture. Clearly, geometric effects are more evident than
   diffraction effects. 
2. The images are also very noisy (lack of enough light)


Rectification strategy
``````````````````````
1. We must come up with a better way to focus. Using the "bar indicator" of 
   CaptureShop for focusing is not sufficient.
2. It seems that it is not necessary to perform the experiment at f/32. Most 
   likely an aperture setting of f/16 or f/11 should be good enough for observing 
   the nature of the PSF across the image plane.
3. For exposure setting, use at least 2 seconds, and ISO 100 for f/8. For f/11 
   and/or f/16 verify if the exposure is good enough with 4 seconds exposure, 
   and with ISO 100.
4. Need to do dark-frame substraction.
5. Should probably decrease the object distance by moving the camera forward. 
   What about a distance of about 3 meters?


Date: 09-05-2014; Experiment: PSF measurement on tilted plane
-------------------------------------------------------------

Back of the envelope calculations
`````````````````````````````````

.. code:: code python
    
    >>> import iutils.exputils.imaging as eiu
    >>> m = eiu.mag(180, u=3000)   # magnification (u=3m)
    >>> m
    0.06382978723404255
    >>> sensor_px = 6.0            # micron
    >>> sensor_px_obj_space = sensor_px/m
    >>> sensor_px_obj_space        # sensor pixel in object space
    94.00000000000001
  
.. _focusing_strategy_label:

Focusing strategy
`````````````````

We found that using one of the point source images for visually measuring the 
degree of focus/misfocus is a good option. We could clearly see the blur spot
when the point sources were not completely in focus. 


[TO DO: Insert to images one that is out of focus, and one in focus]


.. _image_lens_target_parallel_technique_label:

Method to ensure the image plane, lens plane & object plane are parallel
````````````````````````````````````````````````````````````````````````

At the start of the experiment, we need to ensure that the target plane, the lens
plane and the sensor plane are parallel to each other. In order to achieve this
configuration, we attached a small laser diode into an aluminum plane, which was 
machined to fit appropriately into the image standard. Another plastic plate, 
which was 3D printed, attached to the front standard in place of the lens, and 
a pin-hole was attached at the center of the plate. The configuration was such 
that the laser light would pass through the pin-hole only when the lens and image 
standards were parallel to each other and their centers were aligned. In this 
configuration, the laser light path represented the virtual optical axis. 
Now, a small mirror was placed on the target surface that reflected the laser 
light back towards the camera. The orientation of the target plane was adjusted 
until the reflected laser light traced the incident path eactly. 

We also used the same laser point to place the target's center approximately near
the optical axis. 

[TO DO: Insert images of the setup for this technique]



