#-------------------------------------------------------------------------------
# Name:        besselfunctions.pyx
# Purpose:     To test CythonGSL
#              Code from
#              https://github.com/twiecki/CythonGSL/blob/master/examples/bessel.pyx
#-------------------------------------------------------------------------------

from cython_gsl cimport *

def bessel_J0(double x):
    return gsl_sf_bessel_J0(x)


#if __name__ == '__main__':
#    test()
