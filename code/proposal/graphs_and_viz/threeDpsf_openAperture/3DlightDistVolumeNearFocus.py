# -*- coding: utf-8 -*-
"""
Plot of the 3D volume of light distribution near the focus for conventional imaging
systems.

Created on Mon Sep 10 02:09:02 2012

@author: Indranil Sinharoy
"""
from __future__ import division
import os
import matplotlib
import matplotlib.cm as cm
import matplotlib.pyplot as plt
import mayavi.mlab as mmlab
from mayavi.tools.pipeline import array2d_source, warp_scalar, poly_data_normals, surface
from multiprocessing import Process
matplotlib.rcParams['xtick.direction'] = 'out'
matplotlib.rcParams['ytick.direction'] = 'out'
#matplotlib.rc('text', usetex=True)
#from numpy import mgrid,pi,zeros,shape,sqrt,abs,sum,cos,sin, max, load, savez, array, append
import numpy as np
import scipy.special as sps
#from Lommelfunctions3d import un,vn
from Lommelfunctions import un,vn

## Input parameters of the optical system
lam = 550e-6                        # wavelength (lambda) in mm
a = 0.5                             # radius of the aperture in mm
f = 25                              # focal length in mm
# Global parameters
s = 16 #None #20   # Number of summations for the lommel functions
m = 10.0   # precision of Lommel function calculation up to m decimal places
k = 2*np.pi/lam
k1 = k*(a/f)**2 # then u = k1*z
k2 = k*(a/f)    # then v = k2*sqrt(x^2 + y^2)

def fresnelNumber(aperture_r,wavelength,focallength):
    return (aperture_r**2)/(wavelength*focallength)

def dlSpotSize(aperture_r, wavelength,focallength):
    return 1.22*wavelength*(focallength/aperture_r)

def func1(z,x,y):
    """Normalized intensity distribution for region |u/v| > 1"""
    global s,m,k1,k2
    u = k1*z
    v = k2*np.sqrt(x**2 + y**2)
    vn0 = vn(u,v,0,s,m)
    vn1 = vn(u,v,1,s,m)
    return (((2/u)**2)*(1 + vn0**2 + vn1**2 -
                         2*vn0*np.cos(0.5*(u + (v**2 /u))) -
                         2*vn1*np.sin(0.5*(u + (v**2 /u)))))

def func2(z,x,y):
    """Normalized intensity distribution for region |u/v| < 1 """
    global s,m,k1,k2
    u = k1*z
    v = k2*np.sqrt(x**2 + y**2)
    un1 = un(u,v,1,s,m)
    un2 = un(u,v,2,s,m)
    return  ((2/u)**2)*(un1**2 + un2**2)

def func3(z,x,y):
    """Normalized intensity distribution for region |u/v| ~ 1"""
    global k1,k2
    u = k1*z
    return (1 - 2*sps.jn(0,u)*np.cos(u) + (sps.jn(0,u))**2)/(u**2)

def intensityDistribution(z,x,y):
    global low_bracket,up_bracket,f,a
    #initialization
    intensity = np.zeros(np.shape(x))
    m1 = np.zeros(np.shape(x))        # masks that defines region 1
    m2 = np.zeros(np.shape(x))        # masks that defines region 2
    m3 = np.zeros(np.shape(x))        # masks that defines region 3

    # The bracketing parameters
    low_bracket = 0.999 #0.999
    up_bracket = 1 + (1-low_bracket)

    # Create the masks
    # Region 1: u > v or z > (f/a)*sqrt(x^2 + y^2)
    b = np.abs(z) > up_bracket*(f/a)*np.abs(np.sqrt(x**2 + y**2))
    m1[b==True]=1; #print 'm1\n',m1
    print "done m1"
    del b;
    # Region 2: u < v or z < (f/a)*sqrt(x^2 + y^2)
    b = np.abs(z) < low_bracket*(f/a)*np.abs(np.sqrt(x**2 + y**2))
    m2[b==True]=1; #print 'm2\n',m2
    print "done m2"
    del b;
    # Region 3: u approx equal v or z approx. equal to (f/a)*sqrt(x^2 + y^2)
    # for this we need to create two masks and then take an AND operation
    b1 = low_bracket*(f/a)*np.abs(np.sqrt(x**2 + y**2)) <= np.abs(z);
    b2 = np.abs(z) <= up_bracket*(f/a)*np.abs(np.sqrt(x**2 + y**2))
    b = b1 * b2  # I guess that this is the only way of doing a AND b (to check)
    m3[b==True]=1; #print 'm3\n',m3
    print "done m3"
    del b,b1,b2

    #print shape(intensity)
    print "sum(m1),sum(m2),sum(m3)",np.sum(m1),np.sum(m2),np.sum(m3); #return intensity
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

    if fPlotSavedData == False:
        # display optical system information
        print "\nFresnel number = %0.3f" %(fresnelNumber(a,lam,f))
        print "Diffraction limited spot radius = %0.4f microns" %(1000*dlSpotSize(a,lam,f)/2.0)
        #u_div = [-8*pi,-6*pi,-4*pi,-2*pi,0,2*pi,4*pi,6*pi,8*pi]
        #u_div = [-8*pi,-7*pi,-6*pi,-5*pi,-4*pi,-3*pi,-2*pi,-1*pi,0]
        b = 0  # Used to aid the naming of files when saving b =0 (done),1(done),2,3
        numdiv = 8
        #u_div = [-8*pi,-7*pi,-6*pi,-5*pi,-4*pi]  #Done
        #u_div = [-4*pi,-3*pi,-2*pi,-1*pi,0] # Done
        u_div = [-8*np.pi,-7*np.pi,-6*np.pi,-5*np.pi,-4*np.pi,-3*np.pi,-2*np.pi,-1*np.pi,0] # Done
        for i in range(len(u_div)-1):
            print "\nSEGMENT NUMBER %d:" %(b*numdiv+i+1)
            print "----------------"
            # extent of plots in terms of u and v (for compatibility and test reasons)
            # u_min = -8*pi; u_max = 8*pi; v_min = -4*pi; v_max = 4*pi
            u_min = u_div[i]; u_max = u_div[i+1]; v_min = -4*np.pi; v_max = 4*np.pi
            #Calculate corresponding z_min,z_max, x_min, x_max, y_min and y_max (in mm)
            z_min = (u_min*lam*f**2)/(2*np.pi*a**2)
            z_max = (u_max*lam*f**2)/(2*np.pi*a**2)
            x_min = (v_min*lam*f)/(2*np.pi*a)
            x_max = (v_max*lam*f)/(2*np.pi*a)
            y_min = (v_min*lam*f)/(2*np.pi*a)
            y_max = (v_max*lam*f)/(2*np.pi*a)
            print "u_min & u_max", u_min, u_max
            print "z_min & z_max", z_min, z_max
            print "x_min & x_max", x_min, x_max
            #nXY = 585j #358j #150j             # Number of samples in the x,y plane/sample points for v
            #nZ  = 13j  #35j  #200j             # Number of samples in the z direction/sample for u
            nXY = 288j #200j # Create 200 points along x and 200 points along y between -+4pi
            nZ  = 36j  #25j  # Create 25*8 = 200 points along z between -8pi and 0
            # Create the grid
            x,y,z = np.mgrid[x_min:x_max:nXY,y_min:y_max:nXY,z_min:z_max:nZ]
            # To ensure that we don't have any zeros -.THIS SHOULDN'T BE REQUIRED for
            # large matrices ... but for smaller matrices, sometimes, we get unlucky
            # and the the points can have zero.....
            # TO DO: Need to find a better way to handle divide by zero errors.
            x[x==0.0]=10e-16
            y[y==0.0]=10e-16
            z[z==0.0]=10e-16

            #--------------------
            dist = intensityDistribution(z,x,y)
            #print "shape of dist", shape(dist)
            # Save the data if required
            if fSaveData == True:
                #fp = os.getcwd()+'\\data\\'
                fp = os.path.dirname(os.path.realpath(__file__))+'\\data\\'
                np.savez(fp+'3Ddistribution10'+str(b*numdiv+i+1),z=z,x=x,y=y,dist=dist)
    else:
        #fp = os.getcwd()+'\\data\\'
        fp = os.path.dirname(os.path.realpath(__file__))+'\\data\\'
        # Join the multiple files
        numdiv = 8   #Use half to plot only half the volume
        for i in range(numdiv):
            npzfile = np.load(fp+'3Ddistribution06'+str(i+1)+'.npz')
            zi = npzfile['z']
            xi = npzfile['x']
            yi = npzfile['y']
            disti = npzfile['dist']
            nX,nY,nZ = np.shape(disti)
            if i==0: # for the very first file, find information about the structure
                dist = np.zeros((nX,nY,numdiv*(nZ-1)+1))
                dist[:,:,0:nZ] = disti
                z = np.zeros((nX,nY,numdiv*(nZ-1)+1))
                x = np.zeros((nX,nY,numdiv*(nZ-1)+1))
                y = np.zeros((nX,nY,numdiv*(nZ-1)+1))
                z[:,:,0:nZ] = zi
                x[:,:,0:nZ] = xi
                y[:,:,0:nZ] = yi
                #x = xi
                #y = yi
                startIndex = (i+1)*nZ
                stopIndex = (i+2)*nZ -1
            else:
                dist[:,:,startIndex:stopIndex]=disti[:,:,1:]
                z[:,:,startIndex:stopIndex] = zi[:,:,1:]
                x[:,:,startIndex:stopIndex] = xi[:,:,1:]
                y[:,:,startIndex:stopIndex] = yi[:,:,1:]
                startIndex = startIndex + nZ -1
                stopIndex = stopIndex + nZ -1
            #delete the variables
            del zi,xi,yi
            #Close the file
            npzfile.close()
            print "Loading data from file..."
        print "Done loading data from file!"
        deltaZ = np.abs(z[0,0,0] - z[0,0,1])
        # Extracting the data for display
        if bCreateFullFromHalf:
            #z_start = 30     # NEED TO DO THIS BECAUSE OF 32 BIT NUMPY MEMORY LIMITATION
            z_end = np.shape(dist)[2]
            #half1 = dist[::2,::2,z_start::].copy()
            #half2 = dist[::2,::2,z_end-2:z_start:-1].copy()
            #print np.shape(half1)
            #print np.shape(half2)
            #dist1 = np.append(half1,half2,2) # THIS IS CAUSING A PROBLEM NOW ... I GUESS BECAUSE OF 32 BIT MACHINE
#            a, b, c = round(nX/2), round(nY/2), np.round((2*(z_end-z_start)-2))
#            dist1 = np.zeros(a*b*c).reshape(a,b,c)
#            dist1[:,:,0:(z_end-z_start)]=dist[::2,::2,z_start::].copy()
#            dist1[:,:,(z_end-z_start)::]=dist[::2,::2,z_end-2:z_start:-1].copy()
#            dist = dist1.copy()
#            del dist1
            fac_xy = 1   # use 1 or 2
            frac_z = 1   # use 1 or 2
            a, b, c = round(nX/fac_xy), round(nY/fac_xy), round(z_end*2/frac_z)
            dist1 = np.zeros(a*b*c).reshape(a,b,c)
            dist1[:,:,0:round(z_end/frac_z)]=dist[::fac_xy,::fac_xy,::frac_z].copy()
            dist1[:,:,round(z_end/frac_z)::]=dist[::fac_xy,::fac_xy,::-frac_z].copy()
            #dist1[:,:,round(z_end/frac_z)::]=dist[::fac_xy,::fac_xy,:0:-frac_z].copy()
            dist = dist1.copy()
            del dist1
            #print "Shape of dist:", np.shape(dist)
            #print "a, b, c: ", a, b, c
        z_min = z[0,0,0]; z_max = z[-1,-1,-1];
        x_min = x[0,0,0]; x_max = x[-1,-1,-1]; y_min = y[0,0,0]; y_max = y[-1,-1,-1];
        print "Done data composition, starting to plot ..."
        #print "z_min, z_max, x_min, x_max, y_min, y_max"
        #print z_min,z_max,x_min,x_max,y_min,y_max
        
        #print np.shape(z), np.shape(x), np.shape(y)
        #Check to see if the x-y plane is consistant along the z-axis
        #print sum(x[:,:,0]==x[:,:,96])==shape(x)[0]*shape(x)[1]
        #print sum(y[:,:,0]==y[:,:,96])==shape(y)[0]*shape(y)[1]
        #print np.shape(dist)

    # z slice of a plane perpendicular to optical axis, with no defocus
    slice_z = getZslice(dist, x, y, z, theta_degree=0.0, defocusSlice=0)   
    print "Amount of defocus in microns:", deltaZ*DEFOCUS_SLICE_POSITION
    if bCOMPARE_PSFS:
        # Get PSF on tilted plane     
        slice_tilted = getZslice(dist, x, y, z, theta_degree=TILT_DEGREES, defocusSlice=0)
        # Get Defocused PSF on tilted plane
        slice_tilted_defo = getZslice(dist, x, y, z, theta_degree=TILT_DEGREES, defocusSlice=DEFOCUS_SLICE_POSITION)
        slice01MayProc = Process(target=plotCompareSliceUsingMayavi, 
                                 args=(slice_z,slice_tilted, x_min, x_max, y_min, y_max,
                                       "Tilted vs Untilted", bSHOW_PSF_ABS_DIFF,))  # the boolean is showAbsDiff
        slice02MayProc = Process(target=plotCompareSliceUsingMayavi, 
                                 args=(slice_z,slice_tilted_defo, x_min, x_max, y_min, y_max,
                                       "Tilted and Defocused vs Untilted", bSHOW_PSF_ABS_DIFF,))  # the boolean is showAbsDiff        
        slice01MayProc.start()
        slice02MayProc.start()
    else: # not comparing PSFs ... just plot different views of the single slice.
        # Spwan the processes to plot center slice
        colormap2use = cm.jet #cm.gray # cm.jet  #bone doesnot work well
        sliceMatProc = Process(target=plotSliceUsingMatplotlib, args=(slice_z, x_min, x_max, y_min, y_max, colormap2use,))
        # Spwan process to plot Y-Z slice    
        slice_x0 = getXslice(dist)    
        sliceYZMatProc = Process(target=plotYZSliceUsingMatplotlib, args=(slice_x0, z_min, z_max, y_min, y_max,colormap2use,))
        # Spwan process to plot the 2-D PSF in 3 dimensions    
        sliceMayProc = Process(target=plotSliceUsingMayavi, args=(slice_z,))
        # start the process
        sliceMatProc.start()
        sliceYZMatProc.start()
        sliceMayProc.start()

    ## Plot the 3D dataset using Mayavi (within the main process...passing the huge data is expensive)
    ## Downsample the 3D matrix by a factor of 2 in all directions for the volume
    ## plot
##    if bCreateFullFromHalf:
##        dist = dist[::2,::2,::2]
##    mmlab.figure(1,bgcolor=(0.0,0.0,0.0),size=(700, 500))
##    #mmlab.contour3d(x,y,z,dist,contours=10,transparent=True)
##    #mmlab.contour3d(dist,contours=8,transparent=True)
##    #field = mmlab.pipeline.volume(mmlab.pipeline.scalar_field(x,y,z,dist))
##    #iso = mmlab.pipeline.iso_surface(field, contours=[0.1, 0.3, 0.5, 0.7, 1.0],opacity=0.6,colormap='YlOrRd')
##    ctf = mmlab.pipeline.volume(mmlab.pipeline.scalar_field(x, y, z, dist))
##    #mmlab.view(0,45)
##    #mmlab.roll(0)
##    mmlab.show()
##    ## TODO !!! Should checkout more control for the contour3d plot ... using the Mayavi
##    #    pipeline in which I should be able to specify which contours to plot....
##    #    can be very useful.

    if bCOMPARE_PSFS:
        slice01MayProc.join()
        slice02MayProc.join()
    else:
        # join back the processes
        sliceMatProc.join()
        sliceYZMatProc.join()
        sliceMayProc.join()


    #extent=[u_min,u_max,v_min,v_max], interpolation='bicubic', cmap=cm.jet

def getZslice(dist, x, y, z, theta_degree=0, defocusSlice=0, normType=0):
    """Get a slice of the PSF distribution from the scalar volume distribution
    
    Parameters
    ----------
    dist     : the 3 dimensional scalar volume distribution
    x, y, z  : coordinate grid
    theta_degree : slant angle of the slice
    defocusSlice : 
    normType : the type of normalization to perform on the slice
                0 = don't perform any normalization (default or invalid value for normType)
                1 = normalize by the max value
                2 = normalize by the sum
    """
    XN, YN, ZN = np.shape(dist)
    if bCreateFullFromHalf:
        z_cen = ZN//2
        z_pos = z_cen - defocusSlice  # control focus/defocus
        # Reshape the x, y, and z
        x_tmp = np.zeros((XN,YN,ZN))
        x_tmp[:,:,0:z_cen] = x
        x_tmp[:,:,z_cen::] = x
        x = x_tmp
        y_tmp = np.zeros((XN,YN,ZN))
        y_tmp[:,:,0:z_cen] = y
        y_tmp[:,:,z_cen::] = y
        y = y_tmp
        z_tmp = np.zeros((XN,YN,ZN))
        z_tmp[:,:,0:z_cen] = z
        z_tmp[:,:,z_cen::] = z
        z = z_tmp
        del x_tmp, y_tmp, z_tmp
    else:
        z_pos = ZN -1
    #slice_z = dist[:,:,z_pos].copy()
    slice_z = np.zeros((XN, YN))
    #print [z_pos + np.round((XN/2 -i)*np.tan(np.deg2rad(theta_degree))) for i in range(XN)]

    for i in range(XN): # along the rows
        slice_z[i,:] = dist[i,:,z_pos + np.round((XN/2 -i)*np.tan(np.deg2rad(theta_degree)))]

    # Normalize the slice
    if normType == 1:
        slice_z = slice_z/np.sum(slice_z)
    elif normType == 2:
        slice_z = slice_z/np.max(slice_z)
    return slice_z
    
def getXslice(dist):
    xslice = dist[(np.shape(dist)[0])/2,:,:]
    #print max(slice_z)
    #print shape(slice_z)
    #print slice_z
    #print "Shape of slice_x0:", np.shape(slice_x0)
    return xslice

def plotSliceUsingMatplotlib(slice_z,x_min,x_max,y_min,y_max, colormap2use):
#    ## Plot a single slice of the 3D dataset using matplotlib
#    # plot the slice z = 0 (or the middle of the stack along the z-axis)
    plt.figure("Slice:X-Y plane",facecolor='white')
    plt.clf()
    ext = list(np.array([x_min,x_max,y_min,y_max])*1000)  #in Microns
    plt.imshow(slice_z,extent=ext,interpolation='bicubic',cmap=colormap2use)
    plt.title('X-Y planar slice at Z=0')
    plt.xlabel('X ($\mu$)')
    plt.ylabel('Y ($\mu$)')
    plt.show()

def plotYZSliceUsingMatplotlib(slice_x0, z_min, z_max, y_min, y_max, colormap2use):
    return
    # plot the slice x = 0 (or the middle of the stack along the x-axis)
    plt.figure("Slice:Y-Z plane",facecolor='white')
    plt.clf()
    #ext = list(np.array([z_min,z_max,y_min,y_max])*1000)  #in Microns
    #plt.imshow(slice_x0.T,extent=ext,interpolation='bicubic',cmap=colormap2use)
    plt.imshow(slice_x0.T,interpolation='bicubic',cmap=colormap2use)
    plt.title('Y-Z planar slice at X=0')
    plt.xlabel('Z ($\mu$)')
    plt.ylabel('Y ($\mu$)')
    plt.show()


def plotSliceUsingMayavi(slice_z):
    #Plot slice surface
    mmlab.figure("Slice:X-Y plane",bgcolor=(1.0,1.0,1.0),size=(600, 600))
    mmlab.clf()
    mmlab.surf(slice_z, warp_scale="auto")
    mmlab.show()
    
def plotCompareSliceUsingMayavi(slice1, slice2, x_min, x_max, y_min, y_max, tlabel='', showAbsDiff=False):
    mmlab.figure("Compare PSFs: "+tlabel,bgcolor=(1.0,1.0,1.0),size=(600, 600))
    mmlab.clf()
    # Create masks
    M,N = np.shape(slice1)
    ma = np.ones((M,N))
    ctma = ma.copy()
    X, Y = np.ogrid[x_min*1000.0:x_max*1000.0:eval('%sj'%(M)),y_min*1000.0:y_max*1000.0:eval('%sj'%(N))]
    ma[M//2::,:] = np.nan
    ctma[0:M//2,:] = np.nan
    if showAbsDiff:
        diff_surf = np.abs(slice1 - slice2)
#        s1 = mmlab.surf(diff_surf, color=(1,0,0),  
#                        opacity=0.85,warp_scale="auto", vmax=1, vmin=0)
#        s2 = mmlab.surf(slice1*ma, color=(0,1,0), opacity=0.15,warp_scale="auto", vmax=1, vmin=0)
#        s3 = mmlab.surf(slice2*ma, color=(0,0,1), opacity=0.15,warp_scale="auto", vmax=1, vmin=0)
#        s2 = mmlab.surf(slice1, color=(0,1,0), mask=ma.astype('bool'), opacity=0.15,warp_scale="auto", vmax=1, vmin=0)
#        s3 = mmlab.surf(slice2, color=(0,0,1), mask=ma.astype('bool'), opacity=0.15,warp_scale="auto", vmax=1, vmin=0)
        # Fix the scaling because of masking and automatic scaling
        #height_scale_applied = s3.actor.actor.scale[2]
        #s1.actor.actor.scale = np.array([1.0, 1.0, height_scale_applied])
        #s2.actor.actor.scale = np.array([1.0, 1.0, height_scale_applied])
        #s3.actor.actor.scale = np.array([1.0, 1.0, height_scale_applied])
        surface(poly_data_normals(warp_scalar(array2d_source(diff_surf),warp_scale=400)),color=(1,0,0),opacity=0.95)
        surface(poly_data_normals(warp_scalar(array2d_source(slice1*ma),warp_scale=400)),color=(0,1,0),opacity=0.15)
        surface(poly_data_normals(warp_scalar(array2d_source(slice2*ma),warp_scale=400)),color=(0,0,1),opacity=0.15)
    else:
        # Surface plots
        surface(poly_data_normals(warp_scalar(array2d_source(slice1*ma),warp_scale=400)),color=(1,0,0),opacity=0.75)
        surface(poly_data_normals(warp_scalar(array2d_source(slice2*ma),warp_scale=400)),color=(0,1,0),opacity=0.65)
        #mmlab.surf(slice1, color=(1,0,0), mask=ma.astype('bool'), opacity=0.75,warp_scale="auto")
        #mmlab.surf(slice2, color=(0,1,0), mask=ma.astype('bool'), opacity=0.75,warp_scale="auto")
        # Contour plots
        ctarr = [1e-4, 1e-3, 0.0018, 0.0124, 0.0185, 0.0264, 0.06, 0.3446]
        sur1 = surface(poly_data_normals(warp_scalar(array2d_source(slice1*ctma))),colormap='autumn')
        sur1.enable_contours = True
        sur1.contour.auto_contours = False
        sur1.contour.contours = ctarr
        sur2 = surface(poly_data_normals(warp_scalar(array2d_source(slice2*ctma))),colormap='summer')
        sur2.enable_contours = True
        sur2.contour.auto_contours = False
        sur2.contour.contours = ctarr
    # Draw axes
    #ext = list(np.array([x_min,x_max,y_min,y_max, 0, 1.0/1000])*1000)  #in Microns
    #mmlab.axes(color=(0.0,0.0,0.0), extent=ext)
    mmlab.show()


def plot3DvolUsingMayavi():
    pass


if __name__ == '__main__':
#    import os
#    import matplotlib
#    import matplotlib.cm as cm
#    import matplotlib.pyplot as plt
#    import mayavi
#    import mayavi.mlab as mmlab
#    from multiprocessing import Process
#    from numpy import load, savez, array, append
#    matplotlib.rcParams['xtick.direction'] = 'out'
#    matplotlib.rcParams['ytick.direction'] = 'out'
#    #matplotlib.rc('text', usetex=True)
    # Flags for loading and saving data
    fSaveData = False
    fPlotSavedData  = True
    bCreateFullFromHalf = True
    bCOMPARE_PSFS = True  # swtich between PSF compare and see individual PSFs
    bSHOW_PSF_ABS_DIFF = 1
    TILT_DEGREES = 15
    DEFOCUS_SLICE_POSITION = 30
    main()