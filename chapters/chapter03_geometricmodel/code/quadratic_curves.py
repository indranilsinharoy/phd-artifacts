# -*- coding: utf-8 -*-
#-------------------------------------------------------------------------------
# Name:      quadratic_curves.py
# Purpose:   study of quadratic curves
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


# Plot 
figw = mlab.figure(1, bgcolor=(0.2, 0.2, 0.2), size=(800, 800))
figw.scene.parallel_projection=True
figw.scene.z_plus_view()

# draw the axes 
plotExtents = (-7, 9, -23, 8.5, 0, 0)
drawOriginAxes(plotExtents, displace=None, colAxes=False, cones=True, 
               xaxis=True, yaxis=True, zaxis=False, opacity=0.5, scale_arrow_width=0.95, 
               scale_label=.25, label_color=(0.75, 0.75, 0.75), visible=True)

  

# coefficients of the general quadratic curve: ax² + bxy + cy² + dx + ey + f = 0
a = 1       # x² term 
b = 1       # xy term        
c = 1       # y² term  
d = 0 #1       # x term 
e = 1       # y term
f = 0 #-1

# Determine type of conic section 
discriminant = b**2 - 4*a*c
#print('discriminant =', discriminant)
det = np.linalg.det([[ a,    b/2.0, d/2.0],
                     [b/2.0,  c,    e/2.0],
                     [d/2.0, e/2.0,  f  ]])
eta = 1 if (det < 0) else -1
#print('det =', det)

k = np.sqrt((a-c)**2 + b**2)
#print('k =', k)
eccentricity = np.sqrt(2*k/(eta*(a+c) + k))

if abs(discriminant) <= 1e-10:
    conicType = 'Parabola'
elif discriminant < 0:
    conicType = 'Circle' if (approx_equal(abs(a), abs(c)) and b==0) else 'Ellipse'
else:
    conicType = 'Rectangular hyperbola' if (a + c == 0) else 'Hyperbola'

print('{} (e = {:1.5f}, det = {:1.5f})'.format(conicType, eccentricity, det))

# plot the implicit curve
col = (58/255, 154/255, 255/255)    #if alpha > 0 else (0/255, 167/255, 101/255)         
implicit_plot('{a}*x**2 + {b}*x*y + {c}*y**2 + {d}*x + {e}*y + {f}'
             .format(a=a, b=b, c=c, d=d, e=e, f=f),
               (-25, 25, -25, 25, -0.0, 0.0), fig_handle=figw, col_isurf=col,
               Nx=1001, Ny=1001, Nz=1, opaque=False, opa_val=1.0, ori_axis=False)

    
# Unit circle
implicit_plot('x**2 + y**2 - {f}'.format(f=1),
               (-25, 25, -25, 25, -0.0, 0.0), fig_handle=figw, col_isurf=(255/255, 66/255, 122/255),
               Nx=1001, Ny=1001, Nz=1, opaque=False, opa_val=1.0, ori_axis=False)
              
mlab.show()