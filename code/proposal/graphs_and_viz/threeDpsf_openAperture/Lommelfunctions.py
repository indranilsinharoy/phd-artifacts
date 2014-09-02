# -*- coding: utf-8 -*-
"""
Implementation of Lommel functions
Created on Sat Sep 08 21:25:53 2012

@author: Indranil
"""
from __future__ import division
import scipy.special as sps
from numpy import zeros, shape, abs

def un(u,v,n,s=None,m=6,enforce=False,smap=False):
    """"Lommel function Un, see def. in Born & Wolf, page 487, Edition 7
    input:
        u: flattened array coordinate
        v: flattened array coordinate
        n: order of the lommel function Un
        s: order of the summation. When s is supplied, m is ignored [None|s_value]
        m: computations of Lommel functions to m decimal places [6|m_value]
        enforce: If set to true, then a minimum of 5 summation terms (including the
                 first term) shall be calculated.
        smap: If true, a map of the terms used in the summation will be returned.

    The criterion for truncation of the sum in Lommel functions is from the paper
    "Algorithms for Fresnel Diffraction at Rectangular and Circular Apertures," Klaus
    D. Mielenz, J. Res. Natl. Inst. Stand. Technol. 103, 497 (1998).
    """
    # implementation note: At this point, u and v are flattened array objects, we
    # shall iterate over every element of u and v to calcuate the intensity for
    # that particular point. First create an empty array uval of the same shape
    uval = zeros(shape(u))         # The dtype of uval is 'float64'
    nmap = zeros(shape(u),dtype='int')
    for i in range(len(uval)):
        # Calculate intensity at every point
        if s==None:
            j=0
            while True:
                #uval[i] = uval[i] + ((-1)**j)*((u[i]/v[i])**(n+2*j))*sps.jn(n + 2*j, v[i])
                jnv = sps.jn(n + 2*j, v[i])
                ubvpn = (u[i]/v[i])**(n+2*j)
                uval[i] = uval[i] + ((-1)**j)*ubvpn*jnv

                if (abs(ubvpn) < 0.5*10**(-m)) or \
                      (((n+2*j) >= abs(v[i])) and (jnv < 0.5*10**(-m))):
                    nmap[i] = j
                    break
                else:
                    j+=1
        else: # if a value of s is supplied
            for j in range(s+1):
                uval[i] = uval[i] + ((-1)**j)*((u[i]/v[i])**(n+2*j))*sps.jn(n + 2*j, v[i])
            nmap[:] = s

    if smap:
        return uval, nmap
    else:
        return uval

def vn(u,v,n,s=None,m=6,enforce=False,smap=False):
    """Lommel function Un, see def. in Born & Wolf, page 487, Edition 7
    input:
        u: flattened array coordinate
        v: flattened array coordinate
        n: order of the lommel function Un
        s: order of the summation. When s is supplied, m is ignored [None|s_value]
        m: computations of Lommel functions to m decimal places [6|m_value]
        enforce: If set to true, then a minimum of 5 summation terms (including the
                 first term) shall be calculated.
        smap: If true, a map of the terms used in the summation will be returned.

    The criterion for truncation of the sum in Lommel functions is from the paper
    "Algorithms for Fresnel Diffraction at Rectangular and Circular Apertures," Klaus
    D. Mielenz, J. Res. Natl. Inst. Stand. Technol. 103, 497 (1998).
    """
    # in the current implementation, u & v are not mgrid, but just a single point
    vval = zeros(shape(u))         # The dtype of uval is 'float64'
    nmap = zeros(shape(u),dtype='int')         #
    for i in range(len(vval)):
        # Calculate intensity at every point
        if s==None:
            j=0
            while True:
                #vval[i] = vval[i] + ((-1)**j)*((v[i]/u[i])**(n+2*j))*sps.jn(n + 2*j, v[i])
                jnv = sps.jn(n + 2*j, v[i])
                vbupn = ((v[i]/u[i])**(n+2*j))
                vval[i] = vval[i] + ((-1)**j)*vbupn*jnv
                if (abs(vbupn) < 0.5*10**(-m)) or \
                      (((n+2*j) >= abs(v[i])) and (jnv < 0.5*10**(-m))):
                    nmap[i]= j
                    break
                else:
                    j+=1
        else:
            for j in range(s+1):
                vval[i] = vval[i] + ((-1)**j)*((v[i]/u[i])**(n+2*j))*sps.jn(n + 2*j, v[i])
            nmap[:] = s

    if smap:
        return vval, nmap
    else:
        return vval



def utest1():
    "Unit test to test the validity of the lommel function for first variable Un"
    print "Unit Test # 1: Validity of Lommel function Un\n"
    s = 20
    u = array([-2,-1, 1e-16, 0.009,1,2,20,20,300])
    v = array([-2,-1, 1e-16, 0.009,1,2,-10,10,10])
    uval_n0 = un(u,v,0,s)
    uval_n1 = un(u,v,1,s)
    uval_n2 = un(u,v,2,s)
    print "Un_n0:\n", uval_n0
    print "Un_n1:\n", uval_n1
    print "Un_n2:\n", uval_n2  # To remove this print later on
    # TO DO: Need to calculate new MSE values for verification.
#    uval_n0_exp = array([-0.09612803 ,0.65275, 0.99996963, 0.65275, -0.09612803])
#    uval_n1_exp = array([-0.45464871, -0.42073549, 0.00449994, 0.42073549,0.45464871])
#
#    mse_n0 = sum((uval_n0 - uval_n0_exp)**2)/len(u)
#    mse_n1 = sum((uval_n1 - uval_n1_exp)**2)/len(u)
#    print "Mean square Errors for n=0 and n=1: ", mse_n0, mse_n1

    vval_n0 = vn(u,v,0,s)
    vval_n1 = vn(u,v,1,s)
    print "Vn_n0:\n", vval_n0   #To remove this print later on
    print "Vn_n1:\n", vval_n1   #To remove this print later on

#    if mse_n0 < 0.00001 and mse_n1 < 0.00001:
#        print "\n\n---Unit Test 1 was successful---"
#    else:
#        print "\n\n---Unit Test 1 was not successful---"   # Need to implement assertion here

def utest2():
    print "\nUnit Test# 2: Check functionality and convergence when s is not passed:"
    u = array([-2,-1,0.009,1,2,20,20,300])
    v = array([-2,-1,0.009,1,2,-10,10,10])
    print "\nCalculation for Un: (m=default)\n"
    uval_n1, nmap_n1 = un(u,v,1,smap=True)
    uval_n2, nmap_n2 = un(u,v,2,smap=True)
    print "Un_n1:\n", uval_n1
    print "Un_n2:\n", uval_n2
    print "nmap_n1:", nmap_n1
    print "nmap_n2:", nmap_n2
    print "\nCalculation for Vn: (m=default)\n"
    vval_n0,nmap_n0 = vn(u,v,0,smap=True)
    vval_n1, nmap_n1 = vn(u,v,1,smap=True)
    print "Vn_n0:\n", vval_n0
    print "Vn_n1:\n", vval_n1
    print "nmap_n0:", nmap_n0
    print "nmap_n1:", nmap_n1
    print "\nCalculation for Un: (m=10)\n"
    uval_n1, nmap_n1 = un(u,v,1,m=10,smap=True)
    uval_n2, nmap_n2 = un(u,v,2,m=10,smap=True)
    print "Un_n1:\n", uval_n1
    print "Un_n2:\n", uval_n2
    print "nmap_n1:", nmap_n1
    print "nmap_n2:", nmap_n2
    print "\nCalculation for Vn: (m=10)\n"
    vval_n0,nmap_n0 = vn(u,v,0,m=10,smap=True)
    vval_n1, nmap_n1 = vn(u,v,1,m=10,smap=True)
    print "Vn_n0:\n", vval_n0
    print "Vn_n1:\n", vval_n1
    print "nmap_n0:", nmap_n0
    print "nmap_n1:", nmap_n1
    #print
    #print vn(u,v,1)[0]
    #print vn(u,v,1)[1]


if __name__=='__main__':
    from numpy import array,sum
    print "Initiating Unit test .... \n"
    utest1()
    #utest2()