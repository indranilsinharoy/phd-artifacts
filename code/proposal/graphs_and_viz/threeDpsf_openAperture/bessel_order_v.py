# -*- coding: utf-8 -*-
"""
Behavior of Bessel function for first kind for different orders. J_n(v)
Created on Sun Sep 09 15:01:17 2012

@author: Indranil
"""

from numpy import array,linspace,zeros
import scipy.special as sps
import matplotlib
import matplotlib.pyplot as plt


#
v = array([3,20.5,50])
vmax = max(v)
n = linspace(0,vmax+20,1000)
# Pre-allocate the array s
jval = zeros((len(v),len(n)))

# Calculate 
for i in range(len(v)):
    jval[i,:] = sps.jn(n,v[i])
    
#plot
matplotlib.rcParams['xtick.direction'] = 'out'
matplotlib.rcParams['ytick.direction'] = 'out'
lLabel = []
for i in range(len(v)):
    lLabel.append('v='+ str(v[i]))
plt.figure('Dependence of Bessel functions on n',facecolor='white')
plt.clf()
for i in range(len(v)):
    plt.plot(n,jval[i,:],linewidth=1.2,label=lLabel[i],aa='True')
#plt.axis([])
plt.xlim((0, 60))
plt.ylim((-0.3, 0.6))
plt.legend()
#plt.tight_layout()
plt.title('Dependence of Bessel functions $J_n(v)$ on $n$')
plt.xlabel(r'$n$',fontsize=16)
plt.ylabel(r'$J_n(v)$',fontsize=16)
plt.show()

#Energy under the curves
print "\nEnergy under the curves"
print [sum(abs(jval[i,:])) for i in range(len(v))]