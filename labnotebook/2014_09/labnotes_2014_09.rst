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

Experimental setup
``````````````````

.. figure:: images/expt_psfmeasure_basic_setup_hand_schematic.png
    :alt: schematic of experimental setup
    :align: center

    *Fig: Schematic of experimental setup*

.. Note that currently pandoc doesn't support image scaling natively. So 
   the rst directives "height", "width", and "scale" are not working (or that
   is what I think is happening.) So, scale images externally.

Camera
++++++

To start the experiment, we are going to use a Sinar 86H eVolution digital back 
(see the specs below), and a Rodenstock HR Digaron - S, 180 mm, f/5.6 - f/64 lens 
(sepcs below) attached to a Sinar P3 view camera body.

Specifications of 86H digital back
**********************************
Source: Sinarback86H_

* Sensor type - Dalsa FTF 6080C – RGB Mosaikfilter, Full Frame (48.0x36.0 mm)
* Sensor size -  8000 x 6000 pixels, 48.8 MP, [=> ~ 6 microns pixel pitch]
* Back capability - 4x multi-shot requiring no color interpolation
* Exposure time - 1/10000 second up to 32 seconds
* Digitization - 48 bits (16 bits per channel)


.. _Sinarback86H: http://www.sinar.ch/en/category/products/digital-backs/sinarback-evolution-86-h/


Specifications of Rodenstock HR Digaron 5.6/180 lens
*****************************************************
Source:  Rodenstock180mmHRDigaron_

* Focal length - 180 mm (fixed focal length)
* Flange foc. length - 177.4 mm (g)
* Aperture - f/5.6 to f/64
* Shutter size - Copal 0
* Filter thread - M67x0.75 (b)
* Image circle diameter - 80 mm
* Image angle - 25 deg
* Recomm. Working f-stop - 5.6 - 8
* Shutter controlled by the Sinar CaptureShop software
* Minimum overall resolution as specified - 60 lp/mm 

The lens is of very high quality, and designed for digital sensors. 

.. _Rodenstock180mmHRDigaron: http://www.rodenstock-photo.com/mediabase/original/e_Rodenstock_Digital_Lenses_3-26__8236.pdf

.. figure:: images/rodenstock180mmlens.jpg
    
    *Fig: Schematic of the lens elements*

.. figure:: images/rodenstock180mmlensmtf.jpg

    *Fig: MTF, distortion and light falloff*


The camera is being controlled by Sinar CaptureShop software, which operates only
on a Mac computer (as of now). 


The following images show the construction of wooden plank that was designed to 
support the tablet. 

.. figure:: images/expt_psf_measurement_contraption_006.jpg
    :alt: tablet support
    :align: center

    *Fig: Board used to support the tablet. We can rotate the board about its
    central horizontal axis* 

The following figure shows the back of the board that was updated on 09.10.14. 
In the first construction, there used to a cylindrical rod end to end. However, 
that allowed to board to tilt a little (with the joints between the board and the
rod as pivot points) even when the rod was tightly secured and didn't rotate. 
Replacing the rod with a flat rail improved the design further and the above 
described undesirable tilts didn't happen.

.. figure:: images/expt_psf_measurement_contraption_008.jpg
    :alt: tablet support back view
    :align: center

    *Fig: Construction of the board to support the tablet* 


**[Update: 09.11.14]**

Note that in the current (and previous) design, the actual axis of rotation of
the tablet is slightly displaced from the line joining the hinges (actual 
axis of rotation). Perhaps an even better design could be something like the 
following. In this case the target's rotation axis can be exactly aligned to the 
hinges. 

.. figure:: images/design_target_support2.png
    :alt:
    :align: center

    *Fig: A better contraption then the current one*


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


Target
++++++

The target of point sources were generated using the code ``\code\exp_14_09_psf_measure.py`` 
and rendered on a Surface Pro 3 tablet (pixel size of 117.6 um). Each point 
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
4. Need to do dark-frame subtraction.
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
  


.. _image_lens_target_parallel_technique_label:

Method to ensure the image plane, lens plane & object plane are parallel
````````````````````````````````````````````````````````````````````````

At the start of the experiment, we need to ensure that the target plane, the lens
plane and the sensor plane are parallel to each other. The lens plane and the 
image plane orientation can be set using the manual adjustment knows in the Sinar
camera. In order make all the planes parallel, we mounted a small laser diode on 
an aluminum plane (see figures of contraption below), which was machined to fit appropriately on to the image standard. Another plastic plate, which was 3D 
printed, was attached to the front standard in place of the lens, and a diffuser 
alignment disk was attached at the center of the plate (see the figure). The
configuration was such that the laser light would pass through the small hole in 
the center of the alignment disk only when the centers of the two standards were
aligned. Then, the laser light path represented the virtual optical axis. 
Now, a small mirror was placed on the target surface that reflected the laser 
light back towards the camera. The orientation of the target plane was adjusted 
until the reflected laser light traced the incident path exactly. 

We also used the same laser point to place the target's center approximately near
the optical axis.

The following images show the various contraptions made for the experiment:

.. figure:: images/expt_psf_measurement_contraption_001.jpg
    :alt: aluminum plate for mounting laser
    :align: center

    *Fig: Aluminum plate with adapter (Thorlabs SM1A9_) for mounting laser diode*

.. figure:: images/expt_psf_measurement_contraption_003.jpg
    :alt: aluminum plate with laser 
    :align: center

    *Fig: Aluminum plate with the laser diode mounted*

.. figure:: images/expt_psf_measurement_contraption_002.jpg
    :alt: aluminum plate with camera
    :align: center

    *Fig: Aluminum plate with a scientific camera mounted using the same 
    adapter (Thorlabs SM1A9_)*

.. _SM1A9: http://www.thorlabs.com/thorproduct.cfm?partnumber=SM1A9

.. figure:: images/expt_psf_measurement_contraption_004.jpg
    :alt: plastic plate with coupler and diffuser alignment disk
    :align: center

    *Fig: Plastic plate with coupler (Thorlabs SM1T1SM1_) and 1500 grit frosted 
    ground glass alignment disk (Thorlabs DG0x1500_)*

.. figure:: images/expt_psf_measurement_contraption_005.jpg
    :alt: plastic plate with coupler and diffuser alignment disk mounted
    :align: center

    *Fig: The diffuser alignment disk mounted on the plastic plate*

.. _SM1T1SM1: http://www.thorlabs.com/thorproduct.cfm?partnumber=SM1T1
.. _DG0x1500: http://www.thorlabs.com/newgrouppage9.cfm?objectgroup_id=3855

I bought a pack of cheap 4x4 inch mirrors from Michaels. I bonded one of the 
mirrors on a small square thin sheet of cork board so that the mirror can sit 
flatly on the tablet without scratching its surface. I cut out a piece of elastic 
strap from an old suitcase, divided the strap into halves and attached one to 
two opposite sides of the mirror-cork contraption. Then I fixed few pieces of 
velcros to the strap ends so that I could tightly attach the mirror on to the 
surface of the tablet. I felt it was important to use an elastic band instead of
a non-elastic strap because it would ensure a tight fit, and at the same time 
the velcro based attachment would be quite easy to untie after the alignment.    

.. figure:: images/expt_psf_measurement_contraption_007.jpg
    :alt: mirror contraption 
    :align: center

    *Fig: The parts used to make the mirror contraption*

.. figure:: images/expt_psf_measurement_contraption_015.jpg
    :alt: mirror setup with tablet
    :align: center

    *Fig: Mirror placed on top of the surface using the elastic band. The green 
    spot on the mirror is the laser spot projected from the laser diode attached 
    to the back standard. The ground glass alignment disk is seen through the 
    reflection on the tablet's surface on the right.*

The following method may be used to ensure that the laser beam exactly passes 
through the small orifice in the frosted alignment disk attached to the front 
standard (lens plane): 

.. figure:: images/expt_psf_measurement_contraption_009.jpg
    :alt: laser beam striking the alignment disk
    :align: center

    *Fig: Laser beam striking the alignment disk off-center. i.e. the beam 
    doesn't exactly fall on the opening*

When the laser beam hits the disk off-center instead of exactly passing through 
the orifice the beam is scattered extensively, and the resulting speckle pattern 
can be seen by placing a small white sheet of cardboard in front of the front standard as shown in the next image. 

.. figure:: images/expt_psf_measurement_contraption_010.jpg
    :alt: speckle pattern from alignment disk
    :align: center

    *Fig: Speckle pattern produced by scattering of the laser beam when it hits 
    the alignment disk off-center.*

Adjust the knobs (only vertical and horizontal displacements) of the front 
standard to place the laser beam at the orifice. As the laser spot on and near 
the orifice might be too bright to look at directly, observe the pattern on a 
white cardboard placed in front of the orifice. When the beam passed the
orifice, I could see a "cleaner" spot on the board as shown below.  

.. figure:: images/expt_psf_measurement_contraption_011.jpg

    *Fig: Cleaner spot on the cardboard when the laser beam hit the orifice*

I could do even finer adjustment by observing the diffraction pattern (an Airy
diffraction pattern) on a screen placed near the front standard as the laser 
beam propagated from the orifice to the mirror and back towards the orifice.  
The setup is shown in the following figure. 

.. figure:: images/expt_psf_measurement_contraption_012.jpg

    *Fig: Screen on the right side of the Sinar camera to observed the 
    diffraction pattern.*

.. figure:: images/expt_psf_measurement_contraption_013.jpg
    
    *Fig: Diffraction pattern on the screen. Note that the pattern is somewhat 
    distorted indicating that I could still get a better alignment of the front 
    standard (orifice) to let the beam pass through cleanly.*


.. figure:: images/expt_psf_measurement_contraption_014.jpg

    *Fig: After some fine adjustments of the front standard in the vertical and 
    horizontal directions, I was able to observe much cleaner diffraction 
    pattern*

Now, we need to adjust the target's orientation such that the reflected beam 
coincides with the orifice. The following figure shows the reflected beam 
hitting a region very close to the orifice.

.. figure:: images/expt_psf_measurement_contraption_016.jpg
    
    *Fig: The spot created by the reflected beam beside the alignment disk 
    just before they are made coincident.*  



Date: 09-09-2014; Experiment: PSF measurement on tilted plane
-------------------------------------------------------------

Accessing the TIFF files exported by Sinar's CaptureShop in Python
``````````````````````````````````````````````````````````````````

The raw intensity data captured by the Sinar eVolution 86H digital back is stored 
in a Sinar-specific DNG file. DNG, which stands for "Digital Negative", is an 
extension of the TIFF 6.0 format. 

We exported the DNG files to TIFF images using CaptureShop. However, when I tried
to read the TIFF files using either PIL (Python Image Library) or the ``imread()``
method from the ``scipy.misc`` module, I get the following error:

::

    raise IOError("cannot identify image file")
    IOError: cannot identify image file 

Note that the ``imread()`` function from ``scipy.misc`` uses PIL to handle image 
file read/write; so it is not surprising that ``imread()`` fails.



Building Christoph Gholke's tifffile
++++++++++++++++++++++++++++++++++++

When I tried to build the c extension module using the command ``python setup.py build_ext --inplace``, the build failed with the following output

::

    error: Unable to find vcvarsall.bat

The above build failed because ``distutils`` couldn't find ``vcvarsall.bat``. 
As it turns out, Python 2.6, 2.7, and 3.1 (for Windows) are all built with VS 
2008, and hence the extension modules for these versions of Python need Visual studio 2008 or Visual Studio Express 2008. 
See the following references which describes why the build failed.

1. http://stackoverflow.com/questions/2817869/error-unable-to-find-vcvarsall-bat
2. http://stackoverflow.com/questions/3047542/building-lxml-for-python-2-7-on-windows/5122521#5122521


I installed VS 2008 Express edition (SP1), and tried to build tifffile again. 
However, this time too it fails, as shown in the following output.  

::

    building '_tifffile' extension
    Traceback (most recent call last):
      File "setup.py", line 7, in <module>
        include_dirs=[numpy.get_include()])])
      File "C:\Python27\lib\distutils\core.py", line 152, in setup
        dist.run_commands()
      File "C:\Python27\lib\distutils\dist.py", line 953, in run_commands
        self.run_command(cmd)
      File "C:\Python27\lib\distutils\dist.py", line 972, in run_command
        cmd_obj.run()
      File "C:\Python27\lib\distutils\command\build_ext.py", line 339, in run
        self.build_extensions()
      File "C:\Python27\lib\distutils\command\build_ext.py", line 448, in build_extensions
        self.build_extension(ext)
      File "C:\Python27\lib\distutils\command\build_ext.py", line 498, in build_extension
        depends=ext.depends)
      File "C:\Python27\lib\distutils\msvc9compiler.py", line 473, in compile
        self.initialize()
      File "C:\Python27\lib\distutils\msvc9compiler.py", line 383, in initialize
        vc_env = query_vcvarsall(VERSION, plat_spec)
      File "C:\Python27\lib\distutils\msvc9compiler.py", line 299, in query_vcvarsall
        raise ValueError(str(list(result.keys())))
    ValueError: [u'path']


After some investigation, I found that since I was using Python 64 bit version, 
I need to actually install "Microsoft Visual Studio 2008 Professional Edition" 
with the "X64 Compiler and Tools" option enabled as indicated in this 
stack overflow question:

* http://stackoverflow.com/questions/4676728/value-error-trying-to-install-python-for-windows-extensions

Luckily, I had a copy of Visual Studio 2008 Professional. I installed it with the
"X64 compiler and tools" option enabled as shown in the figure below:


.. image:: images/VC2008InstallationWithx86buildtools.png


After the installation, the build was successful.


Date: 09-11-2014; Experiment: PSF measurement on tilted plane
-------------------------------------------------------------

.. _focusing_strategy_label:

Focusing strategy
`````````````````

We found that using one of the point source images for visually measuring the 
degree of focus/misfocus is a good option (at least in the rigid camera 
configuration). We could clearly see the blur spot when the point sources were 
not completely in focus as shown in the following image. 

.. image:: images/FocusingStrategy_focusedvsd.jpg

Notice, the shape of the misfocused spots. They are overall circular in nature; 
however, this is also a "hint" of a pentagonal ring, cause by the blades of the
lens shutter.

For focusing in tilted plane orientation, currently we are using the following
strategy:

1. Using geometric calculations, estimate the tilt angle between image and lens 
   standard required for a given tilt of the object plane
2. Follow the manual focusing strategy of sinar camera --  

[TO DO!!! update focusing strategy for scheimpflug case]


Standard manual focusing strategy of Sinar P3 view camera
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The following section is "copied" from the Sinar manual.

*The rear standard*

Always establish the plane of maximum sharpness before stopping down.

With the rear standard (controls plane of maximum sharpness and perspective)

- Always set the standards vertically with the coarse tilt.
- With the ﬁne focusing drive **2** sharply focus a suitable first image point
  on the horizontal axis **H** (or on the vertical axis **V** for a vertical axis
  swing.
- With the micro meter drive **3** (or **4** for vertical axis **V** swings) 
  focus on a suitable second image point - roughly opposite the ﬁrst - in the 
  shaded area of the screen or live image.

*The front standard*

With the front standard (controls plane of maximum sharpness but not perspective)

- Locate the plane of maximum sharpness with the rear standard as described above,
  then read off the tilt or swing angle. Direct tilting and swinging with the 
  lens standard is not satisfactory as its optical setup always involves an 
  overall sharpness shift.
- Then turn the lens standard -- in the same direction (+ or -) -- to the same 
  angle.
- Return the rear standard to its zero engagement point.
- Refocus with the ﬁne focusing drive **2** for maximum overall sharpness. Adjust 
  the rear standard for any ﬁnal corrections to the plane of sharpness.

.. image:: images/manual_focusing_sinar.jpg

 **Note** When the object is very close to the camera, you will need to do fine 
 focus adjustment by translating the image plane backward or forward to get the 
 full object in sharp focus. You don't need to do any re-adjustment to tilt.


Date: 09-12-2014; Experiment: PSF measurement on tilted plane
-------------------------------------------------------------
Worked on the code to process the captured images and updated code for projecting
patterns. 




Date: 09-14-2014; Experiment: PSF measurement on tilted plane
-------------------------------------------------------------
We collected some data in tilted plane configuration; However, it seems that the
supposed orientation of the object plane was mis-represented. Additionally, there
was also about a degree of positive tilt of the image plane w.r.t. the lens plane.

[TO DO: 1. Complete the description, 2. Contraption for measuring board tilt]






Date: 09-15-2014; Experiment: PSF measurement on tilted plane
-------------------------------------------------------------






A closer look at our assumed "point source"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I am trying to create a point source by turning on a **single** pixel of a 
surface pro 3 tablet [Refer to the code ``\patterns_for_psf_measure.py`` in
under ``code\exp_14_09_psf_measure``]. 

The following images show closeup view of the point source, taken with a high 
magnification lens. It is clear that I wasn't really able to turn on EXACTLY 
ONE pixel!! It seems that 3 neighboring pixels are also turned on, albeit with 
much lesser intensity.

This can happen due to either of the two reasons:
    
    1. It might be possible, that I am making a mistake in the exact number
       of pixels in the display when I create the pattern array. I should
       test with a much smaller array, and see if I am able to turn on just
       one pixel.
    2. It is possible, that even if I am creating a "good" source file that
       should have worked, the Surface Pro's display driver is doing some
       sort of interpolation/scaling. To make the dot/line "look" larger. This 
       is certainly a possibility. I must try to see if it is possible to 
       disable auto-scaling of this window. I must also test this hypothesis
       by using the same code on a different display. If I am able to disable
       auto-scaling, and correct for this problem, then things will be great.
       Else, I might have to find a way to write directly into the display 
       buffer. 



:red:`It is quite surprising to see the focused and misfocused spots have 
a highly circular shape, in spite of the above structure of the display pixels.`


.. figure:: images/surfacePixel.jpg
    
    *Fig: White source, for which all RGB sites are luminous. Red pixel site,  
    green pixel site, blue pixel site and scale. All are in the same scale.* 

Using the scale, I was able to estimate the "size of a display-pixel" and the 
"size of a R/G/B color-site" in the following way:

(In the following section, I shall refer to the physical pixel size of the 
display that I am using as point-source as "display-pixel" and the pixel in 
the images as "image-pixel" to avoid confusion.)

I opened all the images in Adobe Photoshop, and measured the length of a 
millimeter in terms of the number of image-pixels, which as 637 image-pixels. 
Using the same scale, the length of a single display-pixel (containing R, G, & B
color sites) to be 75 image-pixels which corresponds to 117.74 microns. This is 
very close to 117 microns -- the display-pixel size calculated from the PPI 
specifications of the display using back-of-the-envelope calculations (above). 
Dividing by 3, the width of an individual R/G/B element is about 40 microns. I 
also measured the height of an R/G/B photo-site to be about 94.2 microns.  



Date: 09-16-2014
****************

As it turned out, it was the auto scaling on High DPI setting in Windows 8.1 
(in my Surface Pro 3) that was causing this issue.   

.. image:: images/disable_high_dpi_scaling.jpg

Images of the pixel-sites after disabling high DPI scaling


.. figure:: images/surfacePixel_ScalingDisabled.jpg
    
    *Fig: White source, for which all RGB sites are luminous. Red pixel site,  
    green pixel site, blue pixel site and scale. All are in the same scale.*

The green pixel element that I am using as a point source:

.. figure:: images/displaypixel_green_no_scaling_surfacepro3.png

    *Fig: Dimensions are about 94.2 microns by 40 microns.*



Some issues/questions that needs to be addressed in this experimental setup
````````````````````````````````````````````````````````````````````````````

1. How does one ensure that the target rotates exactly through it's intended 
   central axis? Perhaps we must do some sort of "pose estimation" to estimate 
   the axis of rotation of the plane.










