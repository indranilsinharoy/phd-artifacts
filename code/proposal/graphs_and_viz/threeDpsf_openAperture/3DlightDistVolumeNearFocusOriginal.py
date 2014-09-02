# -*- coding: utf-8 -*-
"""
Plot of the 3D volume of light distribution near the focus for conventional imaging
systems.
 
Created on Mon Sep 10 02:09:02 2012

@author: Indranil
"""
from __future__ import division
from numpy import load,mgrid,pi,zeros,shape,sqrt,abs,sum,cos,sin,savez
import scipy.special as sps
#from Lommelfunctions3d import un,vn
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



def intensityDistribution(z,x,y):
    global low_bracket,up_bracket,f,a    
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
        u_div = [-8*pi,-7*pi,-6*pi,-5*pi,-4*pi,-3*pi,-2*pi,-1*pi,0] # Done
        for i in range(len(u_div)-1):
            print "\nSEGMENT NUMBER %d:" %(b*numdiv+i+1)
            print "----------------"
            # extent of plots in terms of u and v (for compatibility and test reasons)
            # u_min = -8*pi; u_max = 8*pi; v_min = -4*pi; v_max = 4*pi
            u_min = u_div[i]; u_max = u_div[i+1]; v_min = -4*pi; v_max = 4*pi
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
            #nXY = 585j #358j #150j             # Number of samples in the x,y plane/sample points for v
            #nZ  = 13j  #35j  #200j             # Number of samples in the z direction/sample for u
            nXY = 288j #288j # Create 288 points along x and 288 points along y between -+4pi
            nZ  = 36j  #36j  # Create 26*8 = 288 points along z between -8pi and 0
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
            #print "shape of dist", shape(dist)
            # Save the data if required
            if fSaveData == True:
                #fp = os.getcwd()+'\\data\\'
                fp = os.path.dirname(os.path.realpath(__file__))+'\\data\\'
                savez(fp+'3Ddistribution10'+str(b*numdiv+i+1),z=z,x=x,y=y,dist=dist)
    else:  # Generate plot from saved data (no re-computation)
        #fp = os.getcwd()+'\\data\\'
        fp = os.path.dirname(os.path.realpath(__file__))+'\\data\\'
        # Join the multiple files
        numdiv = 8   #Use half to plot only half the volume
        for i in range(numdiv):
            npzfile = load(fp+'3Ddistribution06'+str(i+1)+'.npz')
            zi = npzfile['z']
            xi = npzfile['x']
            yi = npzfile['y']
            disti = npzfile['dist']
            if i==0: # for the very first file, find information about the structure
                nX,nY,nZ = shape(disti)
                dist = zeros((nX,nY,numdiv*(nZ-1)+1))
                dist[:,:,0:nZ] = disti
                z = zeros((nX,nY,numdiv*(nZ-1)+1))
                x = zeros((nX,nY,numdiv*(nZ-1)+1))
                y = zeros((nX,nY,numdiv*(nZ-1)+1))
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

        if bCreateFullFromHalf:
            dist = append(dist,dist[:,:,shape(dist)[2]-2::-1],2)
        
        dist[dist < 1e-10]=0.0
        z_min = z[0,0,0]; z_max = z[-1,-1,-1]; 
        x_min = x[0,0,0]; x_max = x[-1,-1,-1];y_min = y[0,0,0]; y_max = y[-1,-1,-1];
        print "z_min:", z_min, "z_max:", z_max, "x_min:", x_min, "x_max", x_max, "y_min", y_min, "y_max", y_max
        print "shape(z):", shape(z), "shape(x):", shape(x), "shape(y):", shape(y)
        print "shape(dist):", shape(dist)
        #Check to see if the x-y plane is consistant along the z-axis
        #print sum(x[:,:,0]==x[:,:,96])==shape(x)[0]*shape(x)[1]
        #print sum(y[:,:,0]==y[:,:,96])==shape(y)[0]*shape(y)[1]
        print "max(dist):", max(dist)
        print "min(dist)", min(dist)
    
    ## Plot the 3D dataset using Mayavi
    plot_3d = 1    
    if plot_3d:
        mfig = mmlab.figure(1, bgcolor=(1.0, 1.0, 1.0), fgcolor=(0, 0, 0), size=(1000, 800))
        # Get engine
        eng = mmlab.get_engine()
        # Create scalar field source        
        #src = mmlab.pipeline.scalar_field(x, y, z, dist) # Can't do this as x, y, z, and dist doesn't have the same shape!!! so do the following:
        src = mmlab.pipeline.scalar_field(dist)
        src.spacing = (1,1,6)  # 585/97 = 6 (585 points along v b/w -4pi & 4 pi, 13*8 - 7 points along u b/ 0 & 8pi)
        ctrArr = [0.5, 0.37, 0.1, 0.05, 0.03, 0.015]
        #ctrArr = [0.5, 0.1, 0.05, 0.03, 0.0175, 0.0042]  # Looks very complicated
        #ctrArr = [0.5, 0.1, 0.05, 0.0175, 0.0042, 0.0001]
        #ctrArr = [0.5, 0.1, 0.05, 0.01, 0.001, 0.0001]      # Use for seeing the near zero (rings)  
        ctrArr = [0.5, 0.1, 0.05, 0.03, 0.015, 0.001]         
        if 0: #Use colormap
            # Use the pipeline to create contours
            is1 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[0]], 
                                             colormap='Set1', name="one", vmax=0.5, vmin=-0.0)
            is2 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[1]], opacity=0.5, 
                                             colormap='Set1', name="two", vmax=0.5, vmin=-0.0)
            is3 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[2]], opacity=0.35, 
                                             colormap='Set1', name="three", vmax=0.5, vmin=-0.0)
            is4 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[3]], opacity=0.25, 
                                             colormap='Set1', name="four", vmax=0.5, vmin=-0.0)
            is5 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[4]], opacity=0.15, 
                                             colormap='Set1', name="five", vmax=0.5, vmin=-0.0)
            is6 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[5]], opacity=0.1, 
                                             colormap='Set1', name="six", vmax=0.5, vmin=-0.0)
            # Reverse the LUT
            module_manager = eng.scenes[0].children[0].children[0]
            module_manager.scalar_lut_manager.reverse_lut = True
            module_manager.scalar_lut_manager.number_of_colors = 6
        else: # Use individual colors (using a qualitative, accent colormap)
            # Use the pipeline to create contours
            # Note that I have used vmax=0.5 to show the first iso-surface as "red"
            is1 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[0]], opacity= 1.0, 
                                             color=(250/255,2/255,127/255), name="one", vmax=0.5, vmin=-0.0)
            is2 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[1]], opacity=0.5, 
                                             color=(253/255,192/255,134/255), name="two", vmax=0.5, vmin=-0.0)
            is3 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[2]], opacity=0.4, 
                                             color=(255/255,255/255,153/255), name="three", vmax=0.5, vmin=-0.0)
            is4 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[3]], opacity=0.0, 
                                             color=(190/255,174/255,212/255), name="four", vmax=0.5, vmin=-0.0)
            is5 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[4]], opacity=0.2, 
                                             color=(127/255,201/255,127/255), name="five", vmax=0.5, vmin=-0.0)
            is6 = mmlab.pipeline.iso_surface(src, contours=[ctrArr[5]], opacity=0.0, 
                                             color=(56/255,108/255,176/255), name="six", vmax=0.5, vmin=-0.0)           
        
#        # Specularity
#        for i in range(1,7):
#            isur = eval("is{}".format(i))
#            isur.actor.property.specular_color = (1.0, 1.0, 1.0)
#            isur.actor.property.specular = 0.6
#            isur.actor.property.specular_power = 90.0 
#        
#        # Set the lights
#        camera_light = eng.scenes[0].scene.light_manager.lights[0]
#        camera_light.activate = True
#        camera_light.elevation = 50.0
#        camera_light.azimuth = -40.0
#        
#        camera_light1 = eng.scenes[0].scene.light_manager.lights[1]
#        camera_light1.activate = True
#        camera_light1.elevation = -40.0
#        camera_light1.azimuth =  10.0
#        camera_light1.intensity = 0.3
#        
#        camera_light2 = eng.scenes[0].scene.light_manager.lights[2]
#        camera_light2.activate = True
#        camera_light2.elevation = -70.0
#        camera_light2.azimuth =  60.0
#        camera_light2.intensity = 0.23
        
        # Set the camera
        #mmlab.view(azimuth=0, elevation=-90.0, reset_roll=True, roll = 00.0, distance= 50,focalpoint=(0,0,0))
        #Set the camera
        cam = mfig.scene.camera
        cam.parallel_projection = True
        
        scene = eng.scenes[0]
        scene.scene.y_plus_view()        
        
#        # Camera starting position
#        cam.focal_point = array([0.0, 0.0, 0.0])
#        cam.position = array([-10.0, 0.0, 0.0])
#        cam.view_angle = 50.0
#        cam.view_up = array([0.0, 1.0, 0.0])  # Y-axis points vertically upwards
#        # Adjustments from the starting position
#        cam.azimuth(0)
#        cam.elevation(-90.0)
#        cam.zoom(0.150)

        # For 3D Volume distribution
        #mmlab.pipeline.volume(src)

        #mmlab.view(0,45)
        #mmlab.roll(0)
        
        mmlab.show()


  
    ## Plot a single slice of the 3D dataset using matplotlib
    # plot the slice z = 0 (or the middle of the stack along the z-axis)
    plot_slice = 0
    if plot_slice:
        colormap2use = cm.gray #cm.gray # cm.jet  #bone doesnot work well
        plt.figure("Slice:X-Y plane",facecolor='white')
        plt.clf()
        slice_z = dist[:,:,(shape(dist)[2])/2 + 1] #*45]
        ext = list(array([x_min,x_max,y_min,y_max])*1000)  #in Microns    
        plt.imshow(slice_z,extent=ext,interpolation='bicubic',cmap=colormap2use)
        #plt.title('X-Y planar slice at Z=0')
        plt.xlabel('X ($\mu$)')
        plt.ylabel('Y ($\mu$)')
        # plot the slice x = 0 (or the middle of the stack along the x-axis) 
        plt.figure("Slice:Y-Z plane",facecolor='white')
        plt.clf()
        slice_x0 = dist[(shape(dist)[0])/2,:,:]
        ext = list(array([z_min,z_max,y_min,y_max])*1000)  #in Microns    
        plt.imshow(slice_x0.T,extent=ext,interpolation='bicubic',cmap=colormap2use)
        plt.title('Y-Z planar slice at X=0')
        plt.xlabel('Z ($\mu$)')
        plt.ylabel('Y ($\mu$)')    
        
        plt.show()
        
        # Plot slice surface
        mmlab.figure("Slice:X-Y plane",bgcolor=(1.0,1.0,1.0))
        mmlab.surf(slice_z, warp_scale="auto")
        mmlab.show()
        
        #extent=[u_min,u_max,v_min,v_max], interpolation='bicubic', cmap=cm.jet

if __name__ == '__main__':
    import os
    import matplotlib
    import matplotlib.cm as cm
    import matplotlib.pyplot as plt
    import mayavi
    import mayavi.mlab as mmlab
    from numpy import load, savez, array, append, max, min
    matplotlib.rcParams['xtick.direction'] = 'out'
    matplotlib.rcParams['ytick.direction'] = 'out'
    #matplotlib.rc('text', usetex=True)
    # Flags for loading and saving data
    fSaveData = False
    fPlotSavedData  = True
    bCreateFullFromHalf = True
    main()