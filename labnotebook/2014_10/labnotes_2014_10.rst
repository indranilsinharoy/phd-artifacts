Lab notes, October 2014
=========================

.. refer to http://docutils.sourceforge.net/docs/user/rst/quickref.html for quick
   info into reStructuredText



.. _DeterminationOfCOPandPivotPoints:

Sub-sections:

* `Determination of COP <#finding-the-center-of-perspective>`_
* `Determination of Pivot pionts <#determination-of-the-pivot-points>`_


Finding the Center of Perspective
---------------------------------

Goal
~~~~

Tilting/swinging the lens about a point away from the center of projection
(COP), causes a shift in the field of view that in turn causes an unexpected
shift in the image as a result of parallax.

The center of projection is also known as the Center of perspective. 
Technically, it is the center of the entrance pupil. 

Similarly, it is desirable to tilted/swung the image plane about a central 
axis. For example, if we need to compare the PSFs in tilted vs untilted
configurations, then we *may* need to ensure that the magnification in the 
central portion (where the optical aberrations are least) of the images have
same magnification.

The Sinar camera's lens and image standard uses asymmetrical tilt/swing 
axis, which greatly aid in manual focusing on tilted objects. Thus we need
to compensate ....


-------------------

Date: 10-03-2014

-------------------

Setup
`````


.. figure:: images/cop_esti_contraption_00_blades.jpg
    :alt: the blades
    :align: center

    *Fig: The blades*


.. figure:: images/cop_esti_contraption_01_blades.jpg
    :alt: matching the blades
    :align: center

    *Fig: Ensuring that the blades are not curved, using shadow*



.. figure:: images/cop_esti_contraption_02_blades.jpg
    :alt: The blades mounted on optical posts
    :align: center

    *Fig: The blades mounted on optical posts, which are mounted on open builds gantry plates*


.. figure:: images/cop_esti_contraption_02_align.jpg
    :alt: aligning the blades
    :align: center

    *Fig: Aligning the blades (on optical posts) using a laser source*


.. figure:: images/cop_esti_contraption_03_displace.jpg
    :alt: displacement between the blades
    :align: center

    *Fig: Top view of the blades on the rail*


.. figure:: images/copShiftRest_05_CamLookStFocusFrontKnife.jpg
    :alt: view through Sinar cam, focus on front blade
    :align: center

    *Fig: View through the Sinar camera, lens focused on the front post; the blade is marked green*


.. figure:: images/copShiftRest_04_CamLookStFocusBackKnife.jpg
    :alt: view through Sinar cam, focus on front blade
    :align: center

    *Fig: View through the Sinar camera, lens focused on the back post; the blade is marked red*


.. figure:: images/cop_esti_contraption_04_rotOffCOP.jpg
    :alt: Sinar camera rotating about an point away from the COP
    :align: center

    *Fig: The rotation axis, shown in red, is away from the COP (to be determined)*



.. figure:: images/copShiftRest_01_CamLookStraight.jpg
    :alt: camview looking straight
    :align: center

    *Fig: Image of the two posts and blades as seen by the Sinar camera. The second post (marked red) is hidden behind the first (marked green)*


.. figure:: images/copShiftRest_07_CamRotRightTwelveDeg.jpg
    :alt: camview rotated right, away from COP
    :align: center

    *Fig: Sinar camera rotated right by about 12 degrees *


.. figure:: images/copShiftRest_06_CamRotLeftTenDeg.jpg
    :alt: camview rotated left, away from COP
    :align: center

    *Fig: Sinar camera rotated left by about 10 degrees *


.. figure:: images/cop_esti_contraption_05_rotNearCOP.jpg
    :alt: Sinar camera rotating about an point near the COP
    :align: center

    *Fig: The rotation axis, shown in red, is very near to the COP *

.. figure:: images/copShiftRest_02_CamRotRightTwelveDeg.jpg
    :alt: camview rotated right, near the COP
    :align: center

    *Fig: Sinar camera rotated right by about 12 degrees *


.. figure:: images/copShiftRest_03_CamRotLeftTenDeg.jpg
    :alt: camview rotated left, near COP
    :align: center

    *Fig: Sinar camera rotated left by about 10 degrees *



Note that in the above two figures, the red blades that were placed behind
the green blades suddenly appeared towards the "outer" sides. This situation
shouldn't happen normally. I have to correct this and find the source of 
this error.


** Date: 10-04-2014 **


.. figure:: images/COPExp_02_AwayFromCOP_LookSt.jpg
    :alt: Sinar camera looking straight
    :align: center

    *Fig: Camera looking straight *

.. figure:: images/COPExp_02_NearCOP_RotRightTenDeg.jpg
    :alt: camview rotated right, near the COP
    :align: center

    *Fig: Sinar camera rotated right by about 10 degrees *


.. figure:: images/COPExp_02_NearCOP_RotLeftTenDeg.jpg
    :alt: camview rotated left, near COP
    :align: center

    *Fig: Sinar camera rotated left by about 10 degrees *


Using the above method, I was able to find the distance of the COP from
the front standard's pivot plane (see how we estimated it below) at zero
swing and tilt to be **19 mm**.





Determination of the pivot points
--------------------------------- 

The basic idea behind the following method of determination of the pivot
point is that the (tangent) lines when rotated about an axis traces a 
circle. The radius of the traced circle is directly proportional to the 
(perpendicular) distance from the line from the point of rotation (pivot).


---------------------

Date: 10-08-2014

---------------------

The following pictures show how we were able to determine the pivot points. 


**Pivot point in the vertical direction for the front standard**

.. the gifs were created using the command
.. "C:\Program Files\ImageMagick-6.6.8-Q16\convert.exe" -delay 50 *.jpg anim.gif

.. figure:: images/PivotEstimation_hy_FrontStandardAnim.gif
    :alt: front standard pivot vertical gif
    :align: center

    *Fig: Finding the pivot in vertical direction for front standard *

The pivot point in the vertical direction, :math:`h_y`, was found to be -10
mm (i.e. 10 mm below the optical axis), as shown in the following figure.

.. figure:: images/PivotEstimation_hy_FrontStandard.jpg
    :alt: front standard pivot vertical
    :align: center

    *Fig: The pivot in vertical direction for front standard shown by the green dot.*


**Pivot point in the horizontal direction for the front standard:**


.. figure:: images/PivotEstimation_hx_FrontStandardAnim.gif
    :alt: front standard pivot horizontal gif
    :align: center

    *Fig: Finding the pivot in horizontal direction for front standard. *

The pivot point in the horizontal direction, :math:`h_x`, was found to be -12
mm (i.e. 12 mm to the left optical axis ??), as shown in the following figure.

.. figure:: images/PivotEstimation_hx_FrontStandard.jpg
    :alt: front standard pivot vertical
    :align: center

    *Fig: The pivot in horizontal direction for front standard shown by the green dot*



**Pivot point in the vertical direction for the back standard**


.. figure:: images/PivotEstimation_hy_BackStandardAnim.gif
    :alt: back standard pivot vertical gif
    :align: center

    *Fig: Finding the pivot in vertical direction for back standard *

The pivot point in the vertical direction, :math:`h_y`, was found to be -10
mm (i.e. 10 mm below the optical axis), as shown in the following figure.

.. figure:: images/PivotEstimation_hy_BackStandard.jpg
    :alt: back standard pivot vertical
    :align: center

    *Fig: The pivot in vertical direction for back standard shown by the green dot.*



Experimental verification COP shift compensation
------------------------------------------------

The main idea behind this experiment is to verify that we can in-effect place the 
pivot for swing and tilt of the lens standard to be at the COP of the lens. 

If the lens is not swung/tilted about its COP there will inevitably be a "shift" 
between the images. So, we will try to see if we can indeed nullify this shift 
after the COP shift compensation. 

---------------------

Date: 10-15-2014

---------------------


The contraption for the experimental verification for COP shift compensation
is shown below. 


.. figure:: images/copShiftCompExpContraption_01.jpg
    :alt: copShiftCompExpContraption_01
    :align: center

    *Fig:  .*

.. figure:: images/copShiftCompExpContraption_02.jpg
    :alt: copShiftCompExpContraption_02
    :align: center

    *Fig:  .*


