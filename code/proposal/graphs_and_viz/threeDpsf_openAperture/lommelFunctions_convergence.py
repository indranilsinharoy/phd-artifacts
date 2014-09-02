# -*- coding: utf-8 -*-
"""
Created on Mon Sep 10 15:23:10 2012

@author: Indranil
"""

from numpy import array,linspace,zeros,log10
import matplotlib
import matplotlib.pyplot as plt
from Lommelfunctions import un,vn

numsum = 40  # Number of summation terms to consier

# Case |u| > |v|, vn_n0
u1 = array([-3, -11, -100, 11, 11, 20])
v1 = array([1, 10, 99, 10, -10, 12])

assert(len(u1) == len(v1)), "The two vectors u1 and v1 are of unequal length"

csum = zeros((len(u1),numsum+1))
dcsum = zeros((len(u1),numsum))

fig = plt.figure(1)
plt.clf()

for i in range(len(u1)):
    lLabel = 'u='+str(u1[i])+',v='+str(v1[i])
    for s in range(numsum):
        csum[i,s+1] = vn(array([u1[i]]),array([v1[i]]),0,s)
    dcsum[i,:] = abs(csum[i,1:] - csum[i,0:-1])    
    plt.plot(range(numsum),log10(dcsum[i,:]+ 10e-40),label=lLabel)
    #print dcsum[i,:]
plt.legend()

del csum
del dcsum

# Case |u| > |v|, vn_n1
csum = zeros((len(u1),numsum+1))
dcsum = zeros((len(u1),numsum))
fig = plt.figure(2)
plt.clf()

for i in range(len(u1)):
    lLabel = 'u='+str(u1[i])+',v='+str(v1[i])
    for s in range(numsum):
        csum[i,s+1] = vn(array([u1[i]]),array([v1[i]]),1,s)
    dcsum[i,:] = abs(csum[i,1:] - csum[i,0:-1])    
    plt.plot(range(numsum),log10(dcsum[i,:]+ 10e-40),label=lLabel)
    #print dcsum[i,:]
plt.legend()
del csum; del dcsum

# Case |u| < |v|, un_n1
u2 = v1  #array([1, 10, 99, 10, -10])
v2 = u1  #array([-3, -11, -100, 11, 11])

csum = zeros((len(u2),numsum+1))
dcsum = zeros((len(u2),numsum))
fig = plt.figure(3)
plt.clf()

for i in range(len(u2)):
    lLabel = 'u='+str(u2[i])+',v='+str(v2[i])
    for s in range(numsum):
        csum[i,s+1] = un(array([u2[i]]),array([v2[i]]),1,s)
    dcsum[i,:] = abs(csum[i,1:] - csum[i,0:-1])    
    plt.plot(range(numsum),log10(dcsum[i,:]+ 10e-40),label=lLabel)
    #print dcsum[i,:]
plt.legend()
del csum; del dcsum

# Case |u| < |v|, un_n2
fig = plt.figure(4)
plt.clf()
csum = zeros((len(u2),numsum+1))
dcsum = zeros((len(u2),numsum))

for i in range(len(u2)):
    lLabel = 'u='+str(u2[i])+',v='+str(v2[i])
    for s in range(numsum):
        csum[i,s+1] = un(array([u2[i]]),array([v2[i]]),2,s)
    dcsum[i,:] = abs(csum[i,1:] - csum[i,0:-1])    
    plt.plot(range(numsum),log10(dcsum[i,:]+ 10e-40),label=lLabel)
    #print dcsum[i,:]
plt.legend()




plt.show()       

