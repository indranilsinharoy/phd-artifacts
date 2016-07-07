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
from iutils.py.general import approx_equal
from iutils.plot.mayaviutils import implicit_plot, drawOriginAxes

# Helper functions
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
SAVE_FIGURE = False

#%%

if EXP_SETTINGS:
    fl = 24.0
    #mpArr = [1, 3, 5, 7, 10] # all mp >= 1 ;; nothing remarkable happening. The ellipses gets bigger, the rate is proportional to the inverse of the absolute angle
    #mpArr = [0.15, 0.37, 0.3735, 0.5, 1]  # 0.2 <= mp <=1;;
    #mpArr = [0.3735, ]   # parabola for alpha = -5.0° 
    zo = -509.0
    alphaArr = [-5.0, 20.0]
else:
    fl = 24.0                      # focal length
    mpArr = [0.38, 0.5, 1.0, 2.0]  # pupil magnification   
    zo = -509.0                    # object plane distance along z-axis from camera center  
    alphaArr = [-5.0, 20.0]        # True (known) lens rotation angles             


#%% Ensure that conditions are met
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

def roots_first_derivative_Falpha(zo, f, mp):
    """returns the roots and discriminant of F'(alpha)
    
    It is assumed that the lens is rotated about the ENPP. Therefore, 
    the first derivative is a cubic equation in cos(alpha)
    """
    a = -mp*(1 - mp)*zo
    b = -f*(1 - mp**2)
    c = mp*(1 - 2*mp)*zo
    d = f*(1 - mp)
    roots = np.roots([a, b, c, d])
    discriminant = (b**2)*(c**2) - 4*a*(c**3) - 4*(b**3)*d - 27*(a**2)*(d**2) + 18*a*b*c*d
    return roots, discriminant

def first_derivative_has_real_roots(zo, f, mp, alpha0=-89.0, alpha1=89.0):
    """returns True if the first derivative of the function F(alpha) have real roots 
    within the valid range of angles     
    
    If the function returns True, then F(\alpha) is NOT a monotonically increasing/decreasing 
    function and hence we will get two alpha for which the have the same beta
    """
    roots, disc = roots_first_derivative_Falpha(zo, f, mp)
    roots = np.array([arccosd(np.real(root)) for root in roots if np.isreal(root) and abs(root) <= 1.0])
    return np.any(np.logical_and((roots >= alpha0), (roots <= alpha1)))


#%% Plot 
figw = mlab.figure(1, bgcolor=(0.2, 0.2, 0.2), size=(1000, 1000))
figw.scene.parallel_projection=True
figw.scene.z_plus_view()

# draw the axes
if EXP_SETTINGS:
    caxis = mlab.points3d(0.0, 0.0, 0.0, mode='axes', color=(0.6, 0.6, 0.6), line_width=1.0,
                          scale_factor=2., opacity=0.5)
    caxis.actor.property.lighting = False
else:
    plotExtents = (-9.5, 9.5, -11.95, 6.8, 0, 0)   #(-9.5, 9.5, -9.5, 8.9, 0, 0)
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
        # Ensure that there is a unique alpha within +/-90° for the parameters
        assert not first_derivative_has_real_roots(zo, fl, mp), 'F(aplha) not monotonic.'  
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
        
        print('mp = {:0.5f}, alpha = {:0.2f}, f = {:0.3f} :: {} (e = {:1.5f}, det = {:1.5f})'
             .format(mp, alpha, fl, conicType, eccentricity, det))
        # plot the implicit curve
        col = (58/255, 154/255, 255/255) if alpha > 0 else (0/255, 167/255, 101/255)         
        implicit_plot('{a}*x**2 + {b}*x*y + {c}*y**2 + {d}*x + {e}*y + {f}'
                     .format(a=a, b=b, c=c, d=d, e=e, f=f),
                       (-9, 9, -12, 9, -0.0, 0.0), fig_handle=figw, col_isurf=col,
                       Nx=1001, Ny=1001, Nz=1, opaque=False, opa_val=1.0 - i/(1.01*num_mp), 
                       ori_axis=False)
        # y-intercepts of the curve assuming f=0 is y=-e/c. If f≠0, then there will be
        # two y-intercepts given by cy² + ey + f = 0
        if EXP_SETTINGS:
            mplabel = '{:3.2f}'.format(mp)
            mplabelwidth = 0.04
        else:
            mplabel = '{:2.2f}'.format(mp)
            mplabelwidth = 0.03
        mlab.text(x=0.06, y=-e/c + np.sign(alpha)*0.005*e/c, z=0, text=mplabel, 
                  width=mplabelwidth, color=(0.95,0.95,0.95))
    # plot the valid point of intersection i.e. (cos(α), sin(α))
    ptsScale = 0.1 if ZOOM_ON else 0.2
    pcol = (0/255., 70/255, 1) if alpha > 0 else (0, 1, 0.1) 
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
    cam.parallel_scale = 2   # less is more zoom
    #print(cam.parallel_scale)
else:
    cam.parallel_scale = 9.5
    
if SAVE_FIGURE:
    cdir = os.getcwd()
    fname = os.path.join(cdir, 'images', 'alpha_beta_for_lens_pivot_about_enpp.png')
    mlab.savefig(fname)
    
mlab.show()

# Should study the following when time permits (intersection of conics)
# http://math.stackexchange.com/questions/316849/intersection-of-conics-using-matrix-representation
# http://www.pigei.com/conics-intersection
# http://it.mathworks.com/matlabcentral/fileexchange/28318-conics-intersection/content/intersectConics.m
