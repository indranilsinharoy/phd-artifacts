# -*- coding: utf-8 -*-
#-------------------------------------------------------------------------------
# Name:      quadratic_curve_possible_alpha_given_beta.py
# Purpose:   Plot the relationship between the angles -- lens plane tilt (α) 
#            and plane of sharp focus in the object space (β)
#
# Author:      Indranil Sinharoy
#
# Created:     June 2016
# Copyright:   (c) Indranil Sinharoy, 2016
# Licence:     MIT License
#-------------------------------------------------------------------------------
from __future__ import division, print_function
import os
import numpy as np
import mayavi.mlab as mlab
import matplotlib.pyplot as plt
from iutils.py.general import approx_equal
from iutils.plot.mayaviutils import implicit_plot, drawOriginAxes

# Helper functions
sind = lambda x : np.sin(np.deg2rad(x))
cosd = lambda x : np.cos(np.deg2rad(x))
tand = lambda x : np.tan(np.deg2rad(x))
arcsind = lambda x : np.rad2deg(np.arcsin(x))
arccosd = lambda x : np.rad2deg(np.arccos(x))
arctand = lambda x : np.rad2deg(np.arctan(x))

#%% Program control settings
# exploratory/ experimental settings?
EXP_SETTINGS = False  # if False, then settings for saved system for thesis figure will be used
ZOOM_ON = False
SHOW_ALPHA_THIN = False
SAVE_FIGURE = False
ALGORITHM_STEPS = True 

#%% Preset parameters.
# For exploratory analysis change parameters under EXP_SETTINGS

if EXP_SETTINGS:
    # these parameters are suitable for exploring the nature of the curves. Modify as required.
    fl = 24.0
    #mpArr = [1, 3, 5, 7, 10] # all mp >= 1 ;; nothing remarkable happening. The ellipses gets bigger, the rate is proportional to the inverse of the absolute angle
    mpArr = [0.15, 0.38, 1, 2.0]  # 0.2 <= mp <=1;;
    #mpArr = [0.15, ]   # parabola for alpha = -5.0° 
    zo = -509.0
    alphaArr = [-5.0, 18.0188354928516,]# 20.0]
elif ALGORITHM_STEPS:
    zo=-509; fl=50;
    # mpArr = [eg1, eg2, eg3, ...]; alphaArr = [eg1, eg2, eg3, ...]
    mpArr=[0.12, 1.5];  
    alphaArr=[-35, 35]
    stepSize = [30, 5]
    totNumSteps = [300, 48]
    # intermediate values of alpha (every n steps)
    algoSteps1 = [-3.95059289376, -11.6107351938, -19.2708774939, -26.9310197939, -34.591162094, 
                  -35.0836013676, -35.0640618535, -35.0445223395, -35.0249828254, -35.0054433114, 
                  -34.9996163519]
    algoSteps2 = [41.4146581603, 38.0556668456, 34.6966755309, 35.044465935, 35.0084589485, 
                  34.99629274, 35.0000203835, 34.9999751631, 35.0000062974, 35.0000021614]
else:
    # these parameters were determined to be "good" for explanation using figure
    fl = 24.0                      # focal length
    mpArr = [0.15, 0.38, 0.5, 1.0, 2.0]  # pupil magnification   
    zo = -509.0                    # object plane distance along z-axis from camera center  
    #alphaArr = [-5.0, 20.0]        # True (known) lens rotation angles
    alphaArr = [-5.0, 18.0188354928516,]             


#%% Helper functions
def get_zoDash2(zo, f, mp, d, alpha):
    """formula for computing the image plane distance from the pivot 
    (origin of {C}) if lens is tilted about the ENPP. i.e. de=0, deDash=d

    Assuming zo is numerically negative,
        o zoDash is +ve if |zo*mp*c| > f; image is real and inverted
        o zoDash is  ∞  if |zo*mp*c| = f
        o zoDash is -ve if |zo*mp*c| < f
    """
    c = cosd(alpha)
    s = sind(alpha)
    return d*c + mp*f*zo*(mp*c**2 + s**2)/(zo*mp*c + f)

def g_of_alpha_is_monotonic(zo, f, mp):
    """sufficient condition test, to see if first derivative has real roots 
    """
    monotonicity = True
    if mp < 1:
        a = 1
        b = f*(1 + mp)/(mp*zo)
        c = -(1 - 2*mp)/(1 - mp)
        d = -f/(mp*zo)
        Q = c/(3.0*a) - b**2/(9.0*a**2)
        R = -b**3/(27.0*a**3) + b*c/(6.0*a**2) - d/(2.0*a)
        D = Q**3 + R**2
        monotonicity = D > 0
    return monotonicity


#%% Figure
figw = mlab.figure(1, bgcolor=(0.2, 0.2, 0.2), size=(1000, 1000))
figw.scene.parallel_projection=True
figw.scene.z_plus_view()

# draw the axes
if EXP_SETTINGS:
    caxis = mlab.points3d(0.0, 0.0, 0.0, mode='axes', color=(0.6, 0.6, 0.6), line_width=1.0,
                          scale_factor=2., opacity=0.5)
    caxis.actor.property.lighting = False
else:
    if ALGORITHM_STEPS:
        plotExtents = (-1.95, 1.95, -1.95, 1.95, 0, 0)
    else:
        plotExtents = (-6.2, 6.2, -6.2, 5.7, 0, 0) # (-9.5, 9.5, -11.95, 6.8, 0, 0)   #(-9.5, 9.5, -9.5, 8.9, 0, 0)
    tRadius = 0.002 if ALGORITHM_STEPS else 0.012 
    drawOriginAxes(plotExtents, displace=None, colAxes=False, cones=True, 
                   xaxis=True, yaxis=True, zaxis=False, opacity=0.15, scale_arrow_width=1.0, 
                   scale_label=1, label_color=(0.75, 0.75, 0.75), visible=True, cone_scale_factor=0.5,
                   axis_mono_col=(0.6, 0.6, 0.6), axis_tube_radius=tRadius)

# Relation between α and β for focusing on a titled (by β) obj. plane by tilting lens 
# about the entrance pupil by α
  
# f.mp.tan(β).cos²(α) + f.tan(β).sin²(α) + f.(1-mp).cos(α).sin(α) + 0.cos(α) + mp.zo.sin(α) = 0
# substituting: x = cos(α); y = sin(α)
# f.mp.tan(β).x² + f.tan(β).y² + f.(1-mp).xy + 0.x + mp.zo.y = 0

# Notes
# since the x² and y² terms will always have the same sign (mp is positive), this general
# conic equation 
  
num_mp = len(mpArr)
for j, alpha in enumerate(alphaArr):
    for i, mp in enumerate(mpArr):
        if ALGORITHM_STEPS and not i==j: # for this case we don't plot every single combination of mp and alpha
            continue
        # Ensure that there is a unique alpha within +/-90° for the parameters
        if not g_of_alpha_is_monotonic(zo, fl, mp):
            print('F(aplha) not monotonic. for mp ={} zo = {}, f = {}'.format(mp, zo, fl))  
        # Ensure that the condition for real imaging is satisfied
        assert ((abs(zo)*mp - fl/cosd(alpha)) > 0.0), 'Condition for real image failed.'        
        
        # coefficients of the general quadratic curve: ax² + bxy + cy² + dx + ey + f = 0
        x = cosd(alpha)
        y = sind(alpha)
        if (mp < fl*x/(abs(zo) + fl*x)):
            print('Invalid condition! The coefficients of the conic curves are not correct!')
        tanBeta = -y*(mp*zo + (1-mp)*fl*x)/(fl*(mp*x**2 + y**2))
        a = fl*mp*tanBeta       # x² term 
        b = fl*(1 - mp)         # xy term        
        c = fl*tanBeta          # y² term  
        d = 0                   # x term 
        e = mp*zo               # y term
        f = 0
        
        # Determine type of conic section 
        discriminant = b**2 - 4*a*c
        #print('discriminant =', discriminant)
        det = np.linalg.det([[ a,    b/2.0, d/2.0],
                             [b/2.0,  c,    e/2.0],
                             [d/2.0, e/2.0,  f  ]])
        eta = 1 if (det < 0) else -1
        k = np.sqrt((a-c)**2 + b**2)
        eccentricity = np.sqrt(2*k/(eta*(a+c) + k))
        
        if abs(discriminant) <= 1e-10:
            conicType = 'Parabola'
        elif discriminant < 0:
            conicType = 'Circle' if (approx_equal(abs(a), abs(c)) and b==0) else 'Ellipse'
        else:
            conicType = 'Rectangular hyperbola' if (a + c == 0) else 'Hyperbola'
        
        print(u'mp = {:0.5f}, \u03B2 = {:0.2f}, \u03B1 = {:0.2f}, f = {:0.3f} :: {} (e = {:1.5f}, det = {:1.5f})'
             .format(mp, arctand(tanBeta), alpha, fl, conicType, eccentricity, det))
             
        # plot the implicit curve
        col = (58/255, 154/255, 255/255) if alpha > 0 else (0/255, 167/255, 101/255)
        iopacity = 1.0 if ALGORITHM_STEPS else  1.0 - i/(1.01*num_mp)
        ipltext = (-2, 2, -2, 2, -0.0, 0.0) if ALGORITHM_STEPS else (-6, 6, -6.5, 6, -0.0, 0.0)
        implicit_plot('{a}*x**2 + {b}*x*y + {c}*y**2 + {d}*x + {e}*y + {f}'
                     .format(a=a, b=b, c=c, d=d, e=e, f=f),ipltext, fig_handle=figw, col_isurf=col,
                       Nx=1001, Ny=1001, Nz=1, opaque=False, opa_val=iopacity, ori_axis=False)
        
        #%% y-intercepts of the curve assuming f=0 is y=-e/c. If f≠0, then there will be
        # two y-intercepts given by cy² + ey + f = 0
        if EXP_SETTINGS:
            mplabel = '{:3.2f}'.format(mp)
            mplabelwidth = 0.04
        else:
            mplabel = '{:2.2f}'.format(mp)
            mplabelwidth = 0.03
        mlab.text(x=0.06, y=-e/c + np.sign(alpha)*0.005*e/c, z=0, text=mplabel, 
                  width=mplabelwidth, color=(0.95,0.95,0.95))
        if ALGORITHM_STEPS:
            mplx = -0.73 if j else -1.37
            mply = 0.48 if j else -0.12
            mplws = 2.7 if j else 2.5
            mlab.text(x=mplx, y=mply, z=0, text='mp = '+mplabel, width=mplabelwidth*mplws, color=(1.0,0.97,0.97))
    
    #%% plot the algo steps if algo flag is on
    ptsScale = 0.05 if (ZOOM_ON or ALGORITHM_STEPS) else 0.2
    
    angleStepArr = algoSteps2 if j else algoSteps1
    mlab.points3d([cosd(angleStepArr[0]),], [sind(angleStepArr[0]),], [0,], 
                           scale_factor=ptsScale*0.5, color=(1, 0, 0), mode='sphere', resolution=20)    
    N = 3 if j else 5
    opaIncFactor = 0.083 if j else 0.05
    ptsScFactor = 0.01
    altxtwidth = [[0.01487, 0.021, 0.021, 0.021, 0.029],   # green 
                  [0.0153, 0.016, 0.021, 0.021, 0.021]]  # blue 
    for aindex in range(N):
        pt = mlab.points3d([cosd(angleStepArr[aindex]),], [sind(angleStepArr[aindex]),], [0,], 
                           scale_factor=ptsScale*1.5 + aindex*ptsScFactor, color=(1, 1, 1), mode='sphere', resolution=20)
        pt.actor.property.opacity = 0.08 + aindex*opaIncFactor
        mlab.text(cosd(angleStepArr[aindex]) + 0.05, sind(angleStepArr[aindex]) - 0.0015, z=0, 
                  text='i = {0:{width}},  a = {1:0.2f}'.format(aindex*stepSize[j], angleStepArr[aindex], width=3), 
                  width=(altxtwidth[j][aindex] + 0.1), color=(0.8, 0.81, 0.83))   # aindex*stepSize[j]
    
    #%% plot the valid point of intersection i.e. (cos(α), sin(α))
    
    #pcol = (0/255., 70/255, 1) if alpha > 0 else (0, 1, 0.1) 
    pcol = (40/255., 140/255, 1) if alpha > 0 else (0, 1, 0.1) 
    mlab.points3d([x,], [y,], [0,], scale_factor=ptsScale, color=pcol, mode='sphere', resolution=20)    
    
    # since magnitude of y (and x) and less then 1, the offset in y is some fraction of 1/y
    numStepsTxtWid = [0.119, 0.109]
    if ALGORITHM_STEPS:
        alphaEst = algoSteps2[-1] if j else algoSteps1[-1]
        mlab.text(x - 0.8, y -0.04, z=0, 
                  text='True = {:2.1f},  Est. = {:2.6f}'.format(alpha, alphaEst), width=0.26, color=(1, 1, 0))
        mlab.text(x - 0.8, y - 0.1, z=0, text='# steps = {}'.format(totNumSteps[j]), width=numStepsTxtWid[j], 
                  color=(0.8196, 0.77647, 0.3216))
        alphaInit = algoSteps2[0] if j else algoSteps1[0]
        mlab.text(cosd(alphaInit) - 0.56, sind(alphaInit) - 0.01, z=0, 
          text='Init. Est. = {:2.6f}'.format(alphaInit), width=0.18, color=(0.86, 0.86, 0.86))
    else:
        mlab.text(x + 0.15, y + np.sign(y)*abs(0.03/y), z=0, 
                  text='{:2.3f}'.format(alpha).zfill(4), width=0.06, color=(1, 1, 0))
    
    # %% SHOW_ALPHA_THIN 
    if SHOW_ALPHA_THIN:
        alphaThin = -arcsind(fl*tanBeta/zo)
        mlab.points3d([cosd(alphaThin),], [sind(alphaThin),], [0,], 
                       scale_factor=ptsScale, color=(1, 1, 1), mode='sphere', resolution=20)
        mlab.text(cosd(alphaThin) - 0.56, sind(alphaThin) - 0.01, z=0, 
          text='Init. Est. = {:2.6f}'.format(alphaThin), width=0.18, color=(0.86, 0.86, 0.86))
        
# Unit circle
implicit_plot('x**2 + y**2 - {f}'.format(f=1),
               (-2, 2, -2, 2, -0.0, 0.0), fig_handle=figw, col_isurf=(255/255, 66/255, 122/255),
               Nx=1001, Ny=1001, Nz=1, opaque=False, opa_val=1.0, ori_axis=False)
               
# Other intersection point for mp=0.15 .... how to eliminate it?
# The following sub-section code is completely manual right now.
if not ALGORITHM_STEPS:
    alphaOther = 45.0  
    mlab.points3d([cosd(alphaOther),], [sind(alphaOther),], [0,], scale_factor=0.18, color=(1, 0.2, 0.2), 
                  mode='2dcross', resolution=20)

#%% Camera
cam = figw.scene.camera
if ZOOM_ON:    
    cam.parallel_scale = 2   # less is more zoom
    #print(cam.parallel_scale)
else:
    if ALGORITHM_STEPS:
        cam.parallel_scale = 1.4
    else:
        cam.parallel_scale = 6. #9.5

figarr = mlab.screenshot()

#%% Figure save

if SAVE_FIGURE:
    cdir = os.getcwd()
    imgname = 'algo_steps_to_find_alpha.png' if ALGORITHM_STEPS else 'alpha_beta_for_lens_pivot_about_enpp.png'
    fname = os.path.join(cdir, 'images', imgname)
    mlab.savefig(fname)
    
mlab.show()

#%% Matplotlib figure

#fig2, ax = plt.subplots(1, 1, dpi=180, figsize=(6, 6))
#ax.imshow(figarr)
#ax.xaxis.set_ticks([])
#ax.yaxis.set_ticks([])
#ax1 = fig2.add_axes([0.14, 0.11, 0.25, 0.13])
#
#x = np.linspace(0, 5)
#y = np.sin(x)
#ax1.plot(x, y)
#
#plt.show()

# Should study the following when time permits (intersection of conics)
# http://math.stackexchange.com/questions/316849/intersection-of-conics-using-matrix-representation
# http://www.pigei.com/conics-intersection
# http://it.mathworks.com/matlabcentral/fileexchange/28318-conics-intersection/content/intersectConics.m
