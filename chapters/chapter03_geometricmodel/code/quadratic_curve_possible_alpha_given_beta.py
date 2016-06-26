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
import numpy as np
import mayavi.mlab as mlab
from iutils.py.general import approx_equal
from iutils.plot.mayaviutils import implicit_plot, drawOriginAxes

# helper functions
sind = lambda x : np.sin(np.deg2rad(x))
cosd = lambda x : np.cos(np.deg2rad(x))
tand = lambda x : np.tan(np.deg2rad(x))
arcsind = lambda x : np.rad2deg(np.arcsin(x))
arccosd = lambda x : np.rad2deg(np.arccos(x))
arctand = lambda x : np.rad2deg(np.arctan(x))

# exploratory/ experimental settings?
EXP_SETTINGS = False  # if False, then settings for saved system for thesis figure will be used
ZOOM_ON = False
SHOW_ALPHA_THIN = False

if EXP_SETTINGS:
    #fl = 50.0
    #mpArr = [1, 3, 5, 7, 10] # all mp >= 1 ;; nothing remarkable happening. The ellipses gets bigger, the rate is proportional to the inverse of the absolute angle
    #mpArr = [0.05, 0.2, 0.3, 0.5, 0.7, 1]  # 0.2 <= mp <=1;;
    #mpArr = [0.1393480566117447, ]   # parabola for alpha = -5.0° 
    #zo = -1000.0
    #alphaArr = [-5.0, 20.0]
    #zo=-539.359427021; fl=89.8074019381; mpArr=[0.155474178, ]; alphaArr=[-6.10160377014, ];
    zo=-928.149214632; fl=54.8193565806; mpArr=[0.108342986115, ]; alphaArr=[-27.0718326653, ]; # very peculiar case ...
    #zo=-1079.87808266; fl=58.416738787; mpArr=[0.101679253101, ]; alphaArr=[-28.4685848773, ]    
    #zo=-655.674286325; fl=81.6602220572; mpArr=[0.0441952155845, ]; alphaArr=[-14.6948487664, ];  # invalid condition             
else:
    fl = 50.0                # focal length
    mpArr = [0.15, 0.5, 1.0, 2.0]  # pupil magnification   Should include 0.1
    zo = -1000.0             # object plane distance along z-axis from camera center  
    alphaArr = [-5.0, 20.0]  # True (known) lens rotation angles             

# Plot 
figw = mlab.figure(1, bgcolor=(0.2, 0.2, 0.2), size=(800, 800))
figw.scene.parallel_projection=True
figw.scene.z_plus_view()

# draw the axes
if EXP_SETTINGS:
    pass
else:
    plotExtents = (-9.5, 9.5, -9.5, 8.9, 0, 0)
    drawOriginAxes(plotExtents, displace=None, colAxes=False, cones=True, 
                   xaxis=True, yaxis=True, zaxis=False, opacity=0.5, scale_arrow_width=1.0, 
                   scale_label=1, label_color=(0.75, 0.75, 0.75), visible=True, cone_scale_factor=0.5,
                   axis_mono_col=(0.6, 0.6, 0.6), axis_tube_radius=0.012)

# Relation between α and β for focusing on a titled (by β) obj. plane by tilting lens 
# about the entrance pupil by α
  
# f.mp.tan(β).cos²(α) + f.tan(β).sin²(α) + f.(1-mp).cos(α).sin(α) + 0.cos(α) + mp.zo.sin(α) = 0
# substituting: x = cos(α); y = sin(α)
# f.mp.tan(β).x² + f.tan(β).y² + f.(1-mp).xy + 0.x + mp.zo.y = 0

# Notes
# since the x² and y² terms will always have the same sign (mp is positive), this general
# conic equation 
  
num_mp = len(mpArr)
for alpha in alphaArr:
    for i, mp in enumerate(mpArr):
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
        
        print('mp = {:0.5f}, alpha = {:0.2f}, f = {:0.3f} :: {} (e = {:1.5f}, det = {:1.5f})'
             .format(mp, alpha, fl, conicType, eccentricity, det))
        # plot the implicit curve
        col = (58/255, 154/255, 255/255) if alpha > 0 else (0/255, 167/255, 101/255)         
        implicit_plot('{a}*x**2 + {b}*x*y + {c}*y**2 + {d}*x + {e}*y + {f}'
                     .format(a=a, b=b, c=c, d=d, e=e, f=f),
                       (-10, 10, -10, 10, -0.0, 0.0), fig_handle=figw, col_isurf=col,
                       Nx=1001, Ny=1001, Nz=1, opaque=False, opa_val=1.0 - i/(1.01*num_mp), 
                       ori_axis=False)
        # y-intercepts of the curve assuming f=0 is y=-e/c. If f≠0, then there will be
        # two y-intercepts given by cy² + ey + f = 0
        if EXP_SETTINGS:
            mplabel = '{:3.2f}'.format(mp)
            mplabelwidth = 0.03
        else:
            mplabel = '{:2.1f}'.format(mp)
            mplabelwidth = 0.0235
        mlab.text(x=0.06, y=-e/c + np.sign(alpha)*0.005*e/c, z=0, text=mplabel, 
                  width=mplabelwidth, color=(0.95,0.95,0.95))
    # plot the valid point of intersection i.e. (cos(α), sin(α))
    ptsScale = 0.1 if ZOOM_ON else 0.2
    pcol = (0., 0.3, 1) if alpha > 0 else (0, 1, 0.1) 
    mlab.points3d([x,], [y,], [0,], scale_factor=ptsScale, color=pcol, mode='sphere', resolution=20)    
    # since magnitude of y (and x) and less then 1, the offset in y is some fraction of 1/y
    mlab.text(x + 0.15, y + np.sign(y)*abs(0.03/y), z=0, 
              text='{}'.format(alpha).zfill(4), width=0.035, color=(1, 1, 0))
    # 
    if SHOW_ALPHA_THIN:
        alphaThin = -arcsind(fl*tanBeta/zo)
        mlab.points3d([cosd(alphaThin),], [sind(alphaThin),], [0,], 
                       scale_factor=ptsScale, color=(1, 0, 0), mode='sphere', resolution=20)
        
    
# Unit circle
implicit_plot('x**2 + y**2 - {f}'.format(f=1),
               (-2, 2, -2, 2, -0.0, 0.0), fig_handle=figw, col_isurf=(255/255, 66/255, 122/255),
               Nx=1001, Ny=1001, Nz=1, opaque=False, opa_val=1.0, ori_axis=False)

cam = figw.scene.camera
if ZOOM_ON:    
    cam.parallel_scale = 2   # less is more
    #print(cam.parallel_scale)
else:
    cam.parallel_scale = 9.5
    
mlab.show()

# Should study the following when time permits (intersection of conics)
# http://math.stackexchange.com/questions/316849/intersection-of-conics-using-matrix-representation
# http://www.pigei.com/conics-intersection
# http://it.mathworks.com/matlabcentral/fileexchange/28318-conics-intersection/content/intersectConics.m
