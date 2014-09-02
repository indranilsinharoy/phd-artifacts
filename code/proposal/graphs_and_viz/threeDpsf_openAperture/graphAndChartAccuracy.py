# -*- coding: utf-8 -*-
"""
Purpose: Study the difficulty in the perceived accuracy in some plots
In the article "Design of data figures, Points Of View column, Nature Methods, 
September, 2010, Bang Wong argues that it can be difficult to judge the difference
between two curves. For these two plots, the disparity is actually constant but our 
perceptual system is attuned to detecting minimal distances so the divergence appears 
to decrease.


Created on Sun Dec 15 12:22:17 2013

@author: Indranil
"""

from numpy import linspace, exp
import matplotlib.pyplot as plt

x = linspace(0,20)

fig = plt.figure()
ax = fig.add_subplot(111)
ax.plot(x,exp(0.3*x), label='$f(x) = e^{(0.3*x)}$')
ax.plot(x,exp(0.3*x)+50, label='$f(x) = e^{(0.3*x)}+50$')
#ax.plot(x,exp(0.3*(x+5)),'m')
for xi in [0, 5, 10, 15, 20]:
    ax.vlines(xi, exp(0.3*xi), exp(0.3*xi)+50, 'r', linewidth=2, linestyle='-')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')
ax.xaxis.set_tick_params(direction='out')
ax.set_xlim(-0.1, 20.1)

ax.legend(loc=0)

plt.show()
