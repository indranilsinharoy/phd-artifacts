# -*- coding: utf-8 -*-
"""
Distribution of intensity near the focus

Created on Tue Sep 04 21:30:15 2012

@author: Indranil
"""
from __future__ import division
from numpy import sin, cos, pi, abs, zeros, linspace, meshgrid, shape, sum, maximum
import scipy.special as sps
from Lommelfunctions import un,vn

# Import special colormap
import iutils.opticsutils.opticsPlottingUtils as opu
psf_col_map = opu.intensityPSF_BlRd()

# Global variables
low_bracket = 0.999
up_bracket = 1 + (1-low_bracket)
s = None #20   # Number of summations for the lommel functions
m = 10.0   # precision of Lommel function calculation up to m decimal places

def func1(u,v):
    "Normalized intensity distribution for region |u/v| > 1"
    global s,m
    vn0,nmap0 = vn(u,v,0,s,m,smap=True)
    vn1,nmap1 = vn(u,v,1,s,m,smap=True)
    return ((((2/u)**2)*(1 + vn0**2 + vn1**2 -
                         2*vn0*cos(0.5*(u + (v**2 /u))) -
                         2*vn1*sin(0.5*(u + (v**2 /u))))) , maximum(nmap0,nmap1))  

def func2(u,v):
    "Normalized intensity distribution for region |u/v| < 1 "
    global s,m
    un1,nmap1 = un(u,v,1,s,m,smap=True)
    un2,nmap2 = un(u,v,2,s,m,smap=True)    
    return  (((2/u)**2)*(un1**2 + un2**2) , maximum(nmap1,nmap2))
    
def func3(u,v):
    "Normalized intensity distribution for region |u/v| ~ 1"
    return (1 - 2*sps.jn(0,u)*cos(u) + (sps.jn(0,u))**2)/(u**2)


def intensityDistribution(u,v):
    """Function to calculate the intensity distribution near focus.
       It returns the intensity distribution along with a map of the maximum number of
       terms in the summations used to evaluate the Lommel functions.
    """
    intensity = zeros(shape(u))
    nmap = zeros(shape(u),dtype='int')  # map to show summation terms
    #initialize the masks    
    m1 = zeros(shape(u))
    m2 = zeros(shape(u))
    m3 = zeros(shape(u))
    global low_bracket
    global up_bracket
    # Create the masks    
    b = abs(u) > up_bracket*abs(v) 
    m1[b==True]=1; #print 'm1\n',m1
    del b; b = abs(u) < low_bracket*abs(v)
    m2[b==True]=1; #print 'm2\n',m2
    del b; b1 = low_bracket*abs(v) <= abs(u); b2 = abs(u) <= up_bracket*abs(v)
    b = b1 * b2  # I guess that this is the only way of doing a AND b (to check)
    m3[b==True]=1; #print 'm3\n',m3
    del b,b1,b2
    # Note: The following way could have also worked for the two regions when u!=v
    # ubyv = abs(u/v)    
    # intens[ubyv > 1.01] = func1(u[ubyv > 1.01],v[ubyv > 1.01])
    # intens[ubyv < 0.99] = func2(u[ubyv < 0.99],v[ubyv < 0.99])
    # Keep the above method in mind for use elsewhere.    
    

    #print "sum(m1),sum(m2),sum(m3)"
    #print sum(m1),sum(m2),sum(m3)
    #print "sum of intensity start", sum(intensity)
    intensity[m1==1],nmap[m1==1] = func1(u[m1==1],v[m1==1])
    #print "sum of intensity after func1", sum(intensity)
    intensity[m2==1],nmap[m2==1] = func2(u[m2==1],v[m2==1])
    #print "sum of intensity after func2", sum(intensity)
    intensity[m3==1] = func3(u[m3==1],v[m3==1]) 
    #print "sum of intensity after func3", sum(intensity)
    return intensity,nmap


def main():
    if fPlotSavedData == False:
        # Define the region over which to calculate
        u_min = -8*pi; u_max = 8*pi; v_min = -4*pi; v_max = 4*pi
        u,v = meshgrid(linspace(u_min,u_max,2000), linspace(v_min,v_max,1000))
        #u_min = -4*pi; u_max = 4*pi; v_min = -2*pi; v_max = 2*pi
#        u,v = meshgrid(linspace(u_min,u_max,300), linspace(v_min,v_max,150))
#        u_min = -8*pi; u_max = 8*pi; v_min = -4*pi; v_max = 4*pi
#        u,v = meshgrid(linspace(u_min,u_max,100), linspace(v_min,v_max,115))
        dist,nmap = intensityDistribution(u,v)
    else:
        #Load saved data
        fp = os.getcwd()+'\\data\\'
        npzfile = load(fp+'distribution04.npz')
        u = npzfile['u']
        v = npzfile['v']
        dist = npzfile['dist']
        nmap = npzfile['nmap']
        u_min = u[0,0]; u_max = u[-1,-1]; v_min = v[0,0]; v_max = v[-1,-1];
        npzfile.close()  # Close the file
    
    #Plot the distribution
    plt.figure("Light distribution near focal region",facecolor='white', figsize=(10,5))
    plt.clf()
    plt.imshow(dist, extent=[u_min,u_max,v_min,v_max], interpolation='bicubic', 
               cmap=psf_col_map, vmin=dist.min(), vmax=dist.max()) #cmap=cm.jet)
    #(some other colormaps that might look good are gnuplot2, copper,afmhot)    
    #Plot contour on top
    #clevels = [0.,0.00005,0.0005,0.001,0.003,0.005,0.007,0.008,0.009,0.01, \
    #           0.015,0.02,0.025,0.03,0.035,0.04,0.045,0.05,0.06,0.07,0.08, \
    #           0.09,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1]
    #cclrvals = linspace(0,0.8,len(clevels))
    # Reduce the number of clevels ...    
    #clevels = [0., 0.001, 0.003,0.005,0.007,0.009, 0.02,0.04,0.06, 0.08, 0.1, 0.3, 0.5, 0.7, 0.9]
    clevels = [0., 0.0001, 0.002,0.004,0.006,0.008, 0.02,0.04,0.06, 0.08, 0.2, 0.4, 0.6]    
    cclrvals = [0.5]*len(clevels)
    cclr = []    
    for item in cclrvals:
        cclr.append(str(item))
    cclr.reverse()
    cs = plt.contour(u,v,dist,clevels,linewidths=1,colors= cclr,aa=True)
    plt.clabel(cs,clevels[1::2],inline=1,inline_spacing=0,fontsize=9,colors=(0.18,0.18,0.18),clip_on=True)
    
    # add line indicator for diffraction limited DOF
    ax = plt.gca()
    ax.axvline(x=3.2, ymax=0.5, linewidth=0.8, color='#999900', linestyle='dashed')
    ax.axvline(x=-3.2, ymax=0.5, linewidth=0.8, color='#999900', linestyle='dashed')    
    
    #80% contour
    cs0dot8 = plt.contour(u,v,dist,[0.8,],linewidths=1.1, colors='r', aa=True)
    plt.clabel(cs0dot8,[0.8,],inline=1,inline_spacing=0,fontsize=10,colors='k',clip_on=True)
    #plt.clabel(cs,inline=1,inline_spacing=0,fontsize=9)    
    #plt.title(r'Light distribution in focal region')
#    plt.xlabel('$u=\frac{2\pi}{\lambda}(\frac{a}{f})^2 z$')

    ax.spines['left'].set_color('none')
    ax.spines['bottom'].set_color('none')
    ax.spines['right'].set_color('none')
    ax.spines['top'].set_color('none')
    ax.xaxis.set_ticks_position('bottom')  
    ax.yaxis.set_ticks_position('right')
    ax.xaxis.set_tick_params(labelsize=10, labelcolor=(0.2,0.2,0.2))
    ax.yaxis.set_tick_params(labelsize=10, labelcolor=(0.2,0.2,0.2))
 
    
    
#    plt.xlabel(r'$\left(\frac{2\pi}{\lambda}\right)\left(\frac{a}{f}\right)^2z$',\
#                fontsize=15, x=0.2, labelpad=-325)    
#    plt.ylabel(\
#       r'$\left(\frac{2\pi}{\lambda}\right)\left(\frac{a}{f}\right)\sqrt{\left(x^2 + y^2\right)}$',\
#       fontsize=14, labelpad=0)
#       
    plt.xlabel(r'$\frac{\pi}{2\lambda N^2} z$',fontsize=15, x=0.2, labelpad=-325)    
    plt.ylabel(r'$\frac{2\pi}{\lambda N}\sqrt{\left(x^2 + y^2\right)}$', fontsize=14, labelpad=0)
       
   # plt.savefig("C:\PROGRAMSANDEXPERIMENTS\PYTHON\OPTICS\FourierOptics\ThreeDLightDistribution\Figures\contourmap.png", dpi=100, facecolor='w', format='png', bbox_inches='tight', transparent=False, pad_inches=0.1)
    
    #Plot the nmap
#    plt.figure("nmap",facecolor='white')
#    plt.clf()
#    axi = plt.imshow(nmap, extent=[u_min,u_max,v_min,v_max], interpolation='None', cmap=cm.jet)
#    axcb = plt.colorbar(axi,orientation='horizontal')
#    axcb.set_label('Number of summation terms')
#    plt.title(r'Max. sum term for evaluation of Lommel Variables')
#    plt.xlabel(r'$u=\left(\frac{2\pi}{\lambda}\right)\left(\frac{a}{f}\right)^2z$',\
#                fontsize=16)    
#    plt.ylabel(\
#       r'$v=\left(\frac{2\pi}{\lambda}\right)\left(\frac{a}{f}\right)\sqrt{\left(x^2 + y^2\right)}$',\
#       fontsize=16)    
    
    plt.show()
    
    if fSaveData==True:
        fp = os.getcwd()+'\\data\\'
        savez(fp+'distribution',u=u,v=v,dist=dist,nmap=nmap)
        

if __name__ == '__main__':
    import os
    import matplotlib
    import matplotlib.cm as cm
    import matplotlib.pyplot as plt
    from numpy import load, savez
    matplotlib.rcParams['xtick.direction'] = 'out'
    matplotlib.rcParams['ytick.direction'] = 'out'
    #matplotlib.rc('text', usetex=True)
    # Flags for loading and saving data
    fSaveData = False
    fPlotSavedData  = True
    main()
