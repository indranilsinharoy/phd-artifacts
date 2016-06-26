# -*- coding: utf-8 -*-
#-------------------------------------------------------------------------------
# Name:      quartic_curve_possible_alpha_given_beta.py
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
    f = 50.0                 
    mpArr = [0.15, 0.55, 1.0, 2.0]   
    zo = -1000.0
    de = -5.0             
    alphaArr = [-5, 20.0]            
else:
    f = 50.0                # focal length
    mpArr = [0.15, 0.5, 1.0, 2.0]  # pupil magnification   Should include 0.1
    zo = -1000.0             # object plane distance along z-axis from camera center  
    de = -5.0    
    alphaArr = [-5.0, 20.0]  # True (known) lens rotation angles             

# Plot 
figw = mlab.figure(1, bgcolor=(0.2, 0.2, 0.2), size=(800, 800))
figw.scene.parallel_projection=True
figw.scene.z_plus_view()

# draw the axes
if EXP_SETTINGS:
    pass
else:
    plotExtents = (-5.5, 5.5, -5.5, 5.5, 0, 0)
    drawOriginAxes(plotExtents, displace=None, colAxes=False, cones=True, 
                   xaxis=True, yaxis=True, zaxis=False, opacity=0.5, scale_arrow_width=0.95, 
                   scale_label=.25, label_color=(0.75, 0.75, 0.75), visible=True, cone_scale_factor=0.4,
                   axis_mono_col=(0.6, 0.6, 0.6), axis_tube_radius=0.01)

# Relation between α and β for focusing on a titled (by β) obj. plane by tilting lens 
# about a pivot point away from the entrance pupil by α
  
 
num_mp = len(mpArr)
for alpha in alphaArr:
    for i, mp in enumerate(mpArr):
        # coefficients of the general quartic curve: 
        # Ax⁴ + By⁴ + Cx³y + Dx²y² + Exy³ + Fx³ + Gy³ + Hx²y + Ixy² + Jx² + Ky² + Lxy + Mx + Ny + P = 0
        x = cosd(alpha)
        y = sind(alpha)
        #if (mp < f*x/(abs(zo) + f*x)):
        #    print('Invalid condition! The coefficients of the conic curves are not correct!')
        numr = -y*(mp*(zo - de*x) + f*(1-mp)*x)
        deno = (f - mp*de*y**2)*(mp*x**2 + y**2) + mp*(1 - mp)*de*(y**2)*(x**2)
        tanBeta = numr/deno
        #print('beta = ', arctand(tanBeta))
        A = 0                          # x⁴ term 
        B = mp*de*tanBeta              # y⁴ term        
        C = 0                          # x³y term  
        D = -mp*(1-2*mp)*tanBeta       # x²y² term 
        E = 0                          # xy³ term
        F = 0                          # x³ term
        G = 0                          # y³ term
        H = 0                          # x²y term
        I = 0                          # xy² term
        J = -f*mp*tanBeta              # x² term
        K = -f*tanBeta                 # y² term
        L = mp*de - f*(1-mp)           # xy term
        M = 0                          # x term
        N = -zo*mp                     # y term
        P = 0                          # 
        
        # plot the implicit curve
        col = (58/255, 154/255, 255/255) if alpha > 0 else (0/255, 167/255, 101/255)         
        implicit_plot(("{A}*x**4 + {B}*y**4 + {C}*x**3*y + {D}*x**2*y**2 + {E}*x*y**3 + {F}*x**3 + {G}*y**3 + "
                       "{H}*x**2*y + {I}*x*y**2 + {J}*x**2 + {K}*y**2 + {L}*x*y + {M}*x + {N}*y + {P}"
                       .format(A=A, B=B, C=C, D=D, E=E, F=F, G=G, H=H, I=I, J=J, K=K, L=L, M=M, N=N, P=P)),
                       (-25, 25, -25, 25, -0.0, 0.0), fig_handle=figw, col_isurf=col,
                       Nx=1001, Ny=1001, Nz=1, opaque=False, opa_val=1.0 - i/(1.01*num_mp), 
                       ori_axis=False)
    # Need to create the labels manually
    ##TODO!
    # plot the valid point of intersection i.e. (cos(α), sin(α))
    ptsScale = 0.1 if ZOOM_ON else 0.15
    pcol = (0., 0.3, 1) if alpha > 0 else (0, 1, 0.1) 
    mlab.points3d([x,], [y,], [0,], scale_factor=ptsScale, color=pcol, mode='sphere', resolution=20)    
    # since magnitude of y (and x) and less then 1, the offset in y is some fraction of 1/y
    mlab.text(x + 0.15, y + np.sign(y)*abs(0.01/y), z=0, 
              text='{}'.format(alpha).zfill(4), width=0.035, color=(1, 1, 0))
    # 
    if SHOW_ALPHA_THIN:
        alphaThin = -arcsind(f*tanBeta/zo)
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
    cam.parallel_scale = 5.5
    
mlab.show()
# To see
# https://en.wikipedia.org/wiki/System_of_polynomial_equations