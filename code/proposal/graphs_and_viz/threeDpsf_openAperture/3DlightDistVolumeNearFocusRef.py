# -*- coding: utf-8 -*-
"""
This is a Python reference code for plotting 3D distribution of light intensity
near the region of foucs.
This code doesn't actually plot anything ... its main purpose is to be used as
reference code for verifying values and for producing similar code using cython

@author: Indranil Sinharoy
@date : Jan 22, 2014
"""
from __future__ import division
from numpy import load,mgrid,pi,zeros,shape,sqrt,abs,sum,cos,sin,savez
import scipy.special as sps
from Lommelfunctions import un,vn

## Input parameters of the optical system
lam = 550e-6                        # wavelength (lambda) in mm
a = 0.5                               # radius of the aperture in mm
f = 25                              # focal length in mm

# Global parameters
s = 16 #None #20   # Number of summations for the lommel functions
m = 10.0   # precision of Lommel function calculation up to m decimal places
k = 2*pi/lam
k1 = k*(a/f)**2 # then u = k1*z
k2 = k*(a/f)    # then v = k2*sqrt(x^2 + y^2)

def fresnelNumber(aperture_r,wavelength,focallength):
    return (aperture_r**2)/(wavelength*focallength)

def dlSpotSize(aperture_r, wavelength,focallength):
    return 1.22*wavelength*(focallength/aperture_r)

def func1(z,x,y):
    "Normalized intensity distribution for region |u/v| > 1"
    global s,m,k1,k2
    u = k1*z
    v = k2*sqrt(x**2 + y**2)
    vn0 = vn(u,v,0,s,m)
    vn1 = vn(u,v,1,s,m)
    return (((2/u)**2)*(1 + vn0**2 + vn1**2 -
                         2*vn0*cos(0.5*(u + (v**2 /u))) -
                         2*vn1*sin(0.5*(u + (v**2 /u)))))

def func2(z,x,y):
    "Normalized intensity distribution for region |u/v| < 1 "
    global s,m,k1,k2
    u = k1*z
    v = k2*sqrt(x**2 + y**2)
    un1 = un(u,v,1,s,m)
    un2 = un(u,v,2,s,m)
    return  ((2/u)**2)*(un1**2 + un2**2)


def func3(z,x,y):
    "Normalized intensity distribution for region |u/v| ~ 1"
    global k1,k2
    u = k1*z
    return (1 - 2*sps.jn(0,u)*cos(u) + (sps.jn(0,u))**2)/(u**2)



def intensityDistribution(z, x, y):
    global f, a
    #initialization
    intensity = zeros(shape(x))
    m1 = zeros(shape(x))        # masks that defines region 1
    m2 = zeros(shape(x))        # masks that defines region 2
    m3 = zeros(shape(x))        # masks that defines region 3

    # The bracketing parameters
    low_bracket = 0.999 #0.999
    up_bracket = 1 + (1-low_bracket)

    # Create the masks
    # Region 1: u > v or z > (f/a)*sqrt(x^2 + y^2)
    b = abs(z) > up_bracket*(f/a)*abs(sqrt(x**2 + y**2))
    m1[b==True]=1; #print 'm1\n',m1
    print "done m1"
    del b;
    # Region 2: u < v or z < (f/a)*sqrt(x^2 + y^2)
    b = abs(z) < low_bracket*(f/a)*abs(sqrt(x**2 + y**2))
    m2[b==True]=1; #print 'm2\n',m2
    print "done m2"
    del b;
    # Region 3: u approx equal v or z approx. equal to (f/a)*sqrt(x^2 + y^2)
    # for this we need to create two masks and then take an AND operation
    b1 = low_bracket*(f/a)*abs(sqrt(x**2 + y**2)) <= abs(z);
    b2 = abs(z) <= up_bracket*(f/a)*abs(sqrt(x**2 + y**2))
    b = b1 * b2  # I guess that this is the only way of doing a AND b (to check)
    m3[b==True]=1; #print 'm3\n',m3
    print "done m3"
    del b,b1,b2

    #print shape(intensity)
    print "sum(m1),sum(m2),sum(m3)",sum(m1),sum(m2),sum(m3); #return intensity
    #print "sum of intensity start", sum(intensity)
    print "Calculating intensity in region 1"
    intensity[m1==1] = func1(z[m1==1],x[m1==1],y[m1==1])
    #print "sum of intensity after func1", sum(intensity)
    print "Calculating intensity in region 2"
    intensity[m2==1] = func2(z[m2==1],x[m2==1],y[m2==1])
    #print "sum of intensity after func2", sum(intensity)
    print "Calculating intensity in region 3"
    intensity[m3==1] = func3(z[m3==1],x[m3==1],y[m3==1])
    #print "sum of intensity after func3", sum(intensity)
    #print "shape_intensity", shape(intensity)
    return intensity


def main():
    global a,f,lam

    # display optical system information
    print "\nFresnel number = %0.3f" %(fresnelNumber(a,lam,f))
    print "Diffraction limited spot radius = %0.4f microns" %(1000*dlSpotSize(a,lam,f)/2.0)
    #u_div = [-8*pi,-6*pi,-4*pi,-2*pi,0,2*pi,4*pi,6*pi,8*pi]
    #u_div = [-8*pi,-7*pi,-6*pi,-5*pi,-4*pi,-3*pi,-2*pi,-1*pi,0]
    b = 0  # Used to aid the naming of files when saving b =0 (done),1(done),2,3
    #u_div = [-8*pi,-7*pi,-6*pi,-5*pi,-4*pi]  #Done
    #u_div = [-4*pi,-3*pi,-2*pi,-1*pi,0] # Done
    #u_div = [-8*pi,-7*pi,-6*pi,-5*pi,-4*pi,-3*pi,-2*pi,-1*pi,0]
    #v_min = -4*pi; v_max = 4*pi
    #u_div = [-5.0, -4.0,-3.0,-2.0,-1.0, 0.0]
    u_div = [-5.0, 0.0] # Done
    v_min = 1; v_max = 4.0
    numdiv = len(u_div)

    for i in range(len(u_div)-1):
        print "\nSEGMENT NUMBER %d:" %(b*numdiv+i+1)
        print "----------------"
        # extent of plots in terms of u and v (for compatibility and test reasons)
        # u_min = -8*pi; u_max = 8*pi; v_min = -4*pi; v_max = 4*pi
        u_min = u_div[i]; u_max = u_div[i+1];
        #Calculate corresponding z_min,z_max, x_min, x_max, y_min and y_max (in mm)
        z_min = (u_min*lam*f**2)/(2*pi*a**2)
        z_max = (u_max*lam*f**2)/(2*pi*a**2)
        x_min = (v_min*lam*f)/(2*pi*a)
        x_max = (v_max*lam*f)/(2*pi*a)
        y_min = (v_min*lam*f)/(2*pi*a)
        y_max = (v_max*lam*f)/(2*pi*a)
        print "u_min & u_max", u_min, u_max
        print "z_min & z_max", z_min, z_max
        print "x_min & x_max", x_min, x_max
        nXY = 4j #358j #150j             # Number of samples in the x,y plane/sample points for v
        nZ  = 6j  #35j  #200j             # Number of samples in the z direction/sample for u
        #nXY = 288j #288j # Create 288 points along x and 288 points along y between -+4pi
        #nZ  = 36j  #36j  # Create 26*8 = 288 points along z between -8pi and 0
        # Create the grid
        x,y,z = mgrid[x_min:x_max:nXY,y_min:y_max:nXY,z_min:z_max:nZ]
        # To ensure that we don't have any zeros -.THIS SHOULDN'T BE REQUIRED for
        # large matrices ... but for smaller matrices, sometimes, we get unlucky
        # and the the points can have zero.....
        # TO DO: Need to find a better way to handle divide by zero errors.
        x[x==0.0]=10e-16
        y[y==0.0]=10e-16
        z[z==0.0]=10e-16

        #--------------------
        dist = intensityDistribution(z,x,y)
        print dist.flatten()

        # Save the data if required
        if fSaveData == True:
            #fp = os.getcwd()+'\\data\\'
            fp = os.path.dirname(os.path.realpath(__file__))+'\\data\\'
            savez(fp+'3Ddistributionxx'+str(b*numdiv+i+1),z=z,x=x,y=y,dist=dist)



if __name__ == '__main__':
    import os
    from numpy import load, savez, array, append, max, min
    # Flags for loading and saving data
    fSaveData = False
    main()