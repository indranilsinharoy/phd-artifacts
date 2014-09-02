import cython
import numpy as np
from cython_gsl cimport gsl_sf_bessel_Jn

cdef double gsl_bessel_jn(int n, double x):
    """Compute the regular cylindrical Bessel function of order n,
    J_n(x)
    """
    cdef double result
    result = gsl_sf_bessel_Jn(n, x)
    return result

@cython.cdivision(True)
def un_cy03(double[::1] u, double[::1] v, int n, int s=20):
    """"Lommel function Un, see def. in Born & Wolf, page 487, Edition 7
    
    Parameters:
    ----------
    u : flattened array coordinate
    v: flattened array coordinate
    n: order of the lommel function Un
    s: order of the summation. When s is supplied, m is ignored [None|s_value]
    """
    cdef:
        int i, j, L
        double[::1] uval
        double jn, ui, vi
    
    L = len(u)        
    uval = np.zeros((L,), dtype=np.float64)         # The dtype of uval is 'float64'  

    # Calculate intensity at every point
    
    for i in range(L):
        for j in range(s+1):
                ui = u[i]
                vi = v[i]
                jn = gsl_sf_bessel_Jn(n + 2*j, vi)
                uval[i] += ((-1)**j)*((ui/vi)**(n+2*j))*jn
    return np.asarray(uval)