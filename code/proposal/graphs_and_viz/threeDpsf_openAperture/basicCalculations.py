#-------------------------------------------------------------------------------
# Name:        basicCalculations
# Purpose:
#
# Author:      Indranil
#
# Created:     23/01/2014
# Copyright:   (c) Indranil 2014
# Licence:     <your licence>
#-------------------------------------------------------------------------------
from __future__ import division
import numpy as np


def z_from_u(u, fnumber, lamda):
    return 2.0*lamda*fnumber**2*u/np.pi

def r_from_v(v, fnumber, lamda):
    return lamda*fnumber*v/np.pi


# Optical system settings
lamda = 500e-6

#fnums = [1, 2, 4, 5.6, 8, 10, 16, 22]
fnums = [5, 10]
print "fnums\n", fnums

# z: dof one extreme u=pi  [Note that this is not the position of the first
# zero along the axis ... it is actually u=4pi]
dof_ext = [z_from_u(np.pi, fn, lamda) for fn in fnums] #
print "dof_ext\n", dof_ext

# z: plot extreme u=6pi
dof_ext = [z_from_u(6*np.pi, fn, lamda) for fn in fnums] #
print "u=6pi\n", dof_ext


#r: v = pi extreme
r_pi_ext = [r_from_v(np.pi, fn, lamda) for fn in fnums]
print "r_pi_ext\n", r_pi_ext


#r: v = 4pi extreme
r_4pi_ext = [r_from_v(4*np.pi, fn, lamda) for fn in fnums]
print "r_4pi_ext\n", r_4pi_ext
