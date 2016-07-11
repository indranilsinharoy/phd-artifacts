# -*- coding: utf-8 -*-
#-------------------------------------------------------------------------------
# Name:      quartic_plane_curves.py
# Purpose:   study of quartic (plane curves of 4th degrees) curves
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
from iutils.plot.mayaviutils import implicit_plot, drawOriginAxes

#%% Figure settings 
figw = mlab.figure(1, bgcolor=(0.2, 0.2, 0.2), size=(800, 800))
figw.scene.parallel_projection=True
figw.scene.z_plus_view()

# draw the axes 
axisExt = (-2, 2, -2, 2, 0, 0)
drawOriginAxes(axisExt, displace=None, colAxes=False, cones=True, 
               xaxis=True, yaxis=True, zaxis=False, opacity=0.75, scale_arrow_width=1.0, 
               scale_label=.05, label_color=(0.75, 0.75, 0.75), visible=True, cone_scale_factor=0.2,
               axis_mono_col=(1.0, 0.2588, 0.4784), axis_tube_radius=0.005)

# Default plotting grid extent (overwrite explicitly for each curve as required)
plotExt = (-25, 25, -25, 25, -0.0, 0.0)

#%% Quadratic plane curve definitions
# coefficients of the general quadratic curve: 
# Ax⁴ + By⁴ + Cx³y + Dx²y² + Exy³ + Fx³ + Gy³ + Hx²y + Ixy² + Jx² + Ky² + Lxy + Mx + Ny + P = 0
#A=0; B=1; C=0; D=1; E=0; F=0; G=0; H=0; I=0; J=1; K=1; L=1; M=0; N=1; P = 0; # 

# Few standard quartic curves
# First let all coefficients be zero, and change only the required coefficients
A=0; B=0; C=0; D=0; E=0; F=0; G=0; H=0; I=0; J=0; K=0; L=0; M=0; N=0; P=0;

# 1. Ampersand Curve (http://mathworld.wolfram.com/AmpersandCurve.html)
#    It has genus zero, with three ordinary double points, all in the real plane. 
#    Implicit equation: (y² - x²)(x - 1)(2x - 3) = 4(x² + y² - 2x)²
#    Expanded form: -6x⁴ - 4y⁴ - 6x²y² + 21x³ - 19x² + 11xy² + 3y² = 0
#A=-6.; B=-4; D=-6.0; F=21.0; I=11.; J=-19.; K=3.

# 2. Bean curve (http://mathworld.wolfram.com/BeanCurve.html)
#    The bean curve has genus zero. It has one singularity at the origin, an ordinary triple point.
#    Implicit equation: x⁴ + y⁴ + x²y² = x(x² + y²)
#    Expanded form: x⁴ + y⁴ + x²y² - x³ - xy²    
#A=1; B=1; D=1; F=-1; I=-1;

# 3. Bicuspid curve (http://mathworld.wolfram.com/BicuspidCurve.html)
#    The bicuspid curve has cusps at (a,-a) and (a,a). The bicuspid has only the two nodes as 
#    singularities, and hence is a curve of genus one.
#    Implicit equation: (x² - a²)(x - a)² + (y² - a²)² where a determines the size of the curve
#    Expanded form: x⁴ + y⁴ - 2ax³ - 2a²y²  + 2a³x
#a=1; A=1; B=1; F=-2*a; K=-2*a**2; M=2*a**3  

# 4. Bicorn (http://mathworld.wolfram.com/Bicorn.html)
#    The bicorn has two cusps at (±a,0) and is symmetric about the y-axis
#    Implicit equation: y²(a² - x²) = (x² + 2ay - a²)²
#    Expanded form: x⁴ + x²y² + 4ax²y - 2a²x² + 3a²y² - 4a³y + a⁴  
#a=1.0; A=1; B=1; D=1; H=4.0*a; J=-2.0*a**2; K=3.0*a**2; N=-4.0*a**3; P=a**4; plotExt = (-3, 3, -3, 3, 0, 0)          

# 5. Bow curve (http://mathworld.wolfram.com/Bow.html)
#    The bow curve has a single triple point at x=0, y=0, and consequently is a rational curve, 
#    with genus zero.  
#    Implicit equation: x⁴ = x²y - y³ 
#A=1; H=-1; G=1; plotExt = (-2, 2, -2, 2, 0, 0)

# 6. Bullet-nose curve (https://en.wikipedia.org/wiki/Bullet-nose_curve)
#    Implicit equation: a²y² - b²x² = x²y²
#a=1.0; b=1.0; D=1; J=b**2; K=-a**2; plotExt = (-2, 2, -2, 2, 0, 0)

# 7. Cardioid curve (https://en.wikipedia.org/wiki/Cardioid)
#    Implicit equation: (x² + y² + ax)² = a²(x² + y²)
a=1.0; A=1; B=1; D=2; F=2*a; I=2*a; K=-a**2;

# 9. Folium or Kepler's folium (http://mathworld.wolfram.com/Folium.html)
#    Implicit equation: x⁴ + y⁴ + 2x²y² + bx³ + (b-4a)xy² = 0 
#a=1; b=4;  plotExt = (-6, 6, -6, 6, 0, 0)    # Single folium: b >= 4a
#a=1; b=0;  plotExt = (-2, 2, -2, 2, 0, 0)    # Bifolium: b/a = 0
#a=1; b=1; plotExt = (-2, 2, -2, 2, 0, 0)    # Trifolium: 0 < b < 4a
#a=1; b=2; plotExt = (-2, 2, -2, 2, 0, 0)     # Trefoil
#a=-1; b=-2; plotExt = (-2, 2, -2, 2, 0, 0)     # Trefoil
#A=1; B=1; D=2; F=b; I=(b-4*a); 

#10. Folium of Descartes (http://mathworld.wolfram.com/FoliumofDescartes.html)
#    Polar equation: r = (3a.secθ.tanθ)/(1 + tan³θ)
#    Implicit equation: x³ + y³ = 3axy
#a=1; F=1; G=1; L=-3*a; plotExt = (-2, 2, -2, 2, 0, 0)

# x. Swastika curve (http://mathworld.wolfram.com/SwastikaCurve.html)
#    Implicit equation: y⁴ - x⁴ = xy
#A=1; B=-1; L=-1; plotExt = (-3, 3, -3, 3, 0, 0)

# x. Unknown (variation of Swastika curve) 
#    Implicit equation: y⁴ + x⁴ = xy
#A=1; B=1; L=-1; plotExt = (-3, 3, -3, 3, 0, 0)

# x.  
#    Implicit equation: y⁴ + x⁴ = xy + 1
#A=1; B=1; L=-1; P=-1; plotExt = (-3, 3, -3, 3, 0, 0)

# x.
#    Implicit equation: y⁴ + x⁴ = 1
#A=1; B=1; P=-1; plotExt = (-3, 3, -3, 3, 0, 0)

# x.
#A=0; B=1; D=1.;J=0.; K=0; M=0; N=-1; plotExt = (-3, 3, -3, 3, 0, 0)


# x. 
# Ax⁴ + By⁴ + Cx³y + Dx²y² + Exy³ + Fx³ + Gy³ + Hx²y + Ixy² + Jx² + Ky² + Lxy + Mx + Ny + P = 0
#A=1; B=1; D=1.;J=1.; K=1; M=0; N=-1; plotExt = (-3, 3, -3, 3, 0, 0)


#%% plot the implicit curve
col = (58/255, 154/255, 255/255)    #if alpha > 0 else (0/255, 167/255, 101/255)         
implicit_plot(("{A}*x**4 + {B}*y**4 + {C}*x**3*y + {D}*x**2*y**2 + {E}*x*y**3 + {F}*x**3 + {G}*y**3 + "
               "{H}*x**2*y + {I}*x*y**2 + {J}*x**2 + {K}*y**2 + {L}*x*y + {M}*x + {N}*y + {P}"
              .format(A=A, B=B, C=C, D=D, E=E, F=F, G=G, H=H, I=I, J=J, K=K, L=L, M=M, N=N, P=P)),
               plotExt, fig_handle=figw, col_isurf=col,
               Nx=1001, Ny=1001, Nz=1, opaque=False, opa_val=1.0, ori_axis=False)

              
mlab.show()
# To study: 
# https://en.wikipedia.org/wiki/Quartic_plane_curve
# https://en.wikipedia.org/wiki/Algebraic_curve