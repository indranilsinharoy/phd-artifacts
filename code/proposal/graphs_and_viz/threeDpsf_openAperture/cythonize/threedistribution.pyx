from cython_gsl cimport gsl_sf_bessel_Jn as jn
#from scipy.special import jn

import numpy as np
cimport numpy as np
import cython
from libc.math cimport sin, cos, sqrt, abs

DOUBLET = np.double
UINT16 = np.uint16
UINT8 = np.uint8

# compile time type defs
ctypedef np.double_t DOUBLET_t
ctypedef np.uint16_t UINT16_t
ctypedef np.uint8_t UINT8_t

cdef float a, f
cdef double lam, k, k1, k2, PI
cdef int s

#lam = 550e-6                          # wavelength (lambda) in mm
one_by_lambda = 1818.181818181818
a = 0.5                               # radius of the aperture in mm
f = 25.0                              # focal length in mm

# Global parameters
s = 16 
PI = 3.141592653589793
k = 2.0*PI*one_by_lambda
k1 = k*(a/f)**2.0  # then u = k1*z
k2 = k*(a/f)       # then v = k2*sqrt(x^2 + y^2)


@cython.wraparound(False)
@cython.boundscheck(False)
@cython.cdivision(True)
cdef np.ndarray[DOUBLET_t, ndim=1] un(np.ndarray[DOUBLET_t, ndim=1] u, 
                                      np.ndarray[DOUBLET_t, ndim=1] v, 
                                      int n, int s=20):
    """"Lommel function Un, see def. in Born & Wolf, page 487, Edition 7
    
    Python function signature: def un(u, v, n, s=20):
    
    Parameters:
    ----------
    u : flattened array coordinate
    v: flattened array coordinate
    n: order of the lommel function Un
    s: order of the summation. 
    """
    cdef:
        int i, j, L
        double jnvi, ui, vi
    L = len(u)         
    cdef np.ndarray[DOUBLET_t, ndim=1] uval = np.zeros((L,), dtype=DOUBLET)

    # Calculate intensity at every point
    for i in range(L):
        for j in range(s+1):
                ui = u[i]
                vi = v[i]
                jnvi = jn(n + 2*j, vi)
                uval[i] = uval[i] + ((-1)**j)*((ui/vi)**(n+2*j))*jnvi
    return uval

@cython.wraparound(False)
@cython.boundscheck(False)
@cython.cdivision(True)
cdef np.ndarray[DOUBLET_t, ndim=1] vn(np.ndarray[DOUBLET_t, ndim=1] u, 
                                      np.ndarray[DOUBLET_t, ndim=1] v, 
                                      int n, int s=20):
    """Lommel function Vn, see def. in Born & Wolf, page 487, Edition 7

    
    Python function signature: def vn(u, v, n, s=20):
    
    Parameters
    ----------
    u : flattened array coordinate
    v : flattened array coordinate
    n : order of the lommel function Vn
    s : order of the summation.
    """
    cdef:
        int i, j, L
        double jnvi, ui, vi
    L = len(u)         
    cdef np.ndarray[DOUBLET_t, ndim=1] vval = np.zeros((L,), dtype=DOUBLET)
    
    for i in range(L):
        for j in range(s+1):
            ui = u[i]
            vi = v[i]
            jnvi = jn(n + 2*j, vi)
            vval[i] = vval[i] + ((-1)**j)*((vi/ui)**(n+2*j))*jnvi
    return vval

@cython.wraparound(False)
@cython.boundscheck(False)
@cython.cdivision(True)
cdef np.ndarray[DOUBLET_t, ndim=1] func1(np.ndarray[DOUBLET_t, ndim=1] z, 
                                         np.ndarray[DOUBLET_t, ndim=1] x, 
                                         np.ndarray[DOUBLET_t, ndim=1] y, 
                                         int s=20):
    "Normalized intensity distribution for region |u/v| > 1"
    # note this function will be called only once for each segment
    global k1, k2
    
    cdef int zL = z.shape[0]
    cdef np.ndarray[DOUBLET_t, ndim=1] result = np.empty((zL,), dtype=DOUBLET)   
    cdef np.ndarray[DOUBLET_t, ndim=1] u = np.empty((zL,), dtype=DOUBLET)
    cdef np.ndarray[DOUBLET_t, ndim=1] v = np.empty((zL,), dtype=DOUBLET)
    cdef np.ndarray[DOUBLET_t, ndim=1] vn0, vn1

    cdef int i = 0
    for i in range(zL):
        u[i] = k1*z[i]
        v[i] = k2*sqrt(x[i]**2.0 + y[i]**2.0)
    
    vn0 = vn(u, v, 0, s)
    vn1 = vn(u, v, 1, s)
    
    i = 0
    for i in range(zL):
        result[i] = (((2.0/u[i])**2.0)*(1.0 + vn0[i]**2.0 + vn1[i]**2.0 -
                         2.0*vn0[i]*cos(0.5*(u[i] + (v[i]**2.0 /u[i]))) -
                         2.0*vn1[i]*sin(0.5*(u[i] + (v[i]**2.0 /u[i])))))
    return result

@cython.wraparound(False)
@cython.boundscheck(False)
@cython.cdivision(True)
cdef np.ndarray[DOUBLET_t, ndim=1] func2(np.ndarray[DOUBLET_t, ndim=1] z, 
                                         np.ndarray[DOUBLET_t, ndim=1] x, 
                                         np.ndarray[DOUBLET_t, ndim=1] y, 
                                         int s=20):
    "Normalized intensity distribution for region |u/v| < 1 "
    # note this function will be called only once for each segment
    global k1, k2
    
    cdef int zL = z.shape[0]
    cdef np.ndarray[DOUBLET_t, ndim=1] result = np.empty((zL,), dtype=DOUBLET) 
    cdef np.ndarray[DOUBLET_t, ndim=1] u = np.empty((zL,), dtype=DOUBLET)
    cdef np.ndarray[DOUBLET_t, ndim=1] v = np.empty((zL,), dtype=DOUBLET)
    cdef np.ndarray[DOUBLET_t, ndim=1] un1, un2
    
    cdef int i = 0
    for i in range(zL):
        u[i] = k1*z[i]
        v[i] = k2*sqrt(x[i]**2.0 + y[i]**2.0)
    
    un1 = un(u, v, 1, s)
    un2 = un(u, v, 2, s)
    
    i = 0
    for i in range(zL):
        result[i] = ((2.0/u[i])**2)*(un1[i]**2.0 + un2[i]**2.0)
    return  result

@cython.wraparound(False)
@cython.boundscheck(False)
@cython.cdivision(True)
cdef np.ndarray[DOUBLET_t, ndim=1] func3(np.ndarray[DOUBLET_t, ndim=1] z):
    "Normalized intensity distribution for region |u/v| ~ 1"
    # note this function will be called only once for each segment
    global k1
    #cdef np.ndarray[DOUBLET_t, ndim=1] u
    cdef int zL = z.shape[0]
    cdef double u
    cdef np.ndarray[DOUBLET_t, ndim=1] result = np.empty((zL,), dtype=DOUBLET)
    cdef int i = 0
    for i in range(zL):
        u = k1*z[i]
        result[i] = (1.0 - 2.0*jn(0,u)*cos(u) + jn(0,u)**2.0)/(u**2.0)
    return result


## Interface function to be called by Python code 
def intensityDistribution(np.ndarray[DOUBLET_t, ndim=3] z, 
                          np.ndarray[DOUBLET_t, ndim=3] x, 
                          np.ndarray[DOUBLET_t, ndim=3] y):
    global f, a, s
    # Type definitions
    cdef int ix, iy, iz, ix_N, iy_N, iz_N
    cdef double ubf_by_a, lbf_by_a
    #initialization
    cdef np.ndarray[dtype=DOUBLET_t, ndim=3] intensity = np.zeros(np.shape(x), dtype=DOUBLET)
    # mask arrays
    cdef np.ndarray[dtype=UINT16_t, ndim=3] m1 = np.zeros(np.shape(x), dtype=UINT16)
    cdef np.ndarray[dtype=UINT16_t, ndim=3] m2 = np.zeros(np.shape(x), dtype=UINT16)   
    cdef np.ndarray[dtype=UINT16_t, ndim=3] m3 = np.zeros(np.shape(x), dtype=UINT16)     
    # arrays for mask generation
    cdef np.ndarray[dtype=UINT8_t, ndim=3] b = np.zeros(np.shape(x), dtype=UINT8)
    cdef np.ndarray[dtype=DOUBLET_t, ndim=3]ab_sqrt_x2plusy2 = np.zeros(np.shape(x), dtype=DOUBLET)
    
    # The bracketing parameters ... used near the region of the equality sign
    low_bracket = 0.999 #0.999
    up_bracket = 1.0 + (1.0-low_bracket)
        
    # Create the masks      
    ix_N = x.shape[0]
    iy_N = x.shape[1]
    iz_N = x.shape[2]
    ubf_by_a =  up_bracket*(f/a)
    lbf_by_a =  low_bracket*(f/a)
    
    # Create abs(sqrt(x**2 + y**2)) matrix
    for ix in range(ix_N):
        for iy in range(iy_N):
            for iz in range(iz_N):
                ab_sqrt_x2plusy2[ix, iy, iz] = abs(sqrt(x[ix, iy, iz]**2 + y[ix, iy, iz]**2))
    
    # Region 1: u > v or z > (f/a)*sqrt(x^2 + y^2)
    for ix in range(ix_N):
        for iy in range(iy_N):
            for iz in range(iz_N):
                if (abs(z[ix, iy, iz]) > ubf_by_a*ab_sqrt_x2plusy2[ix, iy, iz]):
                    b[ix, iy, iz] = 1
    m1[b==1] = 1
    
    # Region 2: u < v or z < (f/a)*sqrt(x^2 + y^2)
    # reset b
    b = np.zeros(np.shape(x), dtype=UINT8)
    for ix in range(ix_N):
        for iy in range(iy_N):
            for iz in range(iz_N):
                if (abs(z[ix, iy, iz]) < lbf_by_a*ab_sqrt_x2plusy2[ix, iy, iz]):
                    b[ix, iy, iz] = 1
    m2[b==1] = 1 
                    
    # Region 3: u approx equal v or z approx. equal to (f/a)*sqrt(x^2 + y^2)
    # reset bt
    b = np.zeros(np.shape(x), dtype=UINT8)
    for ix in range(ix_N):
        for iy in range(iy_N):
            for iz in range(iz_N):
                zval = z[ix, iy, iz]
                sqrtxyval = ab_sqrt_x2plusy2[ix, iy, iz]
                if ((lbf_by_a*sqrtxyval <= abs(zval)) and 
                    (abs(zval) <= ubf_by_a*sqrtxyval)):
                    b[ix, iy, iz] = 1
    m3[b==1] = 1 

 
    #print "Calculating intensity in region 1"
    intensity[m1==1] = func1(z[m1==1],x[m1==1],y[m1==1], s)

    #print "Calculating intensity in region 2"
    intensity[m2==1] = func2(z[m2==1],x[m2==1],y[m2==1], s)

    #print "Calculating intensity in region 3"
    intensity[m3==1] = func3(z[m3==1])

    return intensity