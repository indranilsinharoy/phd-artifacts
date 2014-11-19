# -*- coding: utf-8 -*-
#-------------------------------------------------------------------------------
# Name:      tiltedFocalPlaneImaging.py
# Purpose:    verify tilted focal plane basic image model
#
# Author:      Indranil Sinharoy
#
# Created:     Tue Nov 18 01:45:50 2014
# Copyright:   (c) Indranil Sinharoy, 2012 - 2015
# Licence:     MIT License
#-------------------------------------------------------------------------------
from __future__ import print_function, division
import numpy as np
from math import tan, pi, atan, cos, sin
from iutils.opticsutils.imager import gaussian_lens_formula
import matplotlib.pyplot as plt
import iutils.plotutils.mplutils as mpu


tand = lambda angle: tan(pi*angle/180.0)
cosd = lambda angle: cos(pi*angle/180.0)
sind = lambda angle: sin(pi*angle/180.0)

def is_even(num):
    return num%2 == 0

def get_alphai(beta, uo, vo):
    return atan((vo/uo)*tand(beta))*180.0/pi

def get_beta(alphai, vo, uo):
    return atan((uo/vo)*tand(alphai))*180.0/pi

def get_ydash_from_y_uo_beta(f, beta, uo, y):
    return (f*y)/(-uo + f - y*tand(beta))

def get_zdash(f, beta, uo, y, z):
    ydash_by_y = f/(-uo + f - y*tand(beta))
    return ydash_by_y*z

def get_y_from_ydash_vo_alphai(f, alphai, vo, ydash):
    return (-f*ydash)/(vo - f + ydash*tand(alphai))

def get_z(f, alphai, vo, ydash, zi):
    y_by_ydash = -f/(vo - f + ydash*tand(alphai))
    return y_by_ydash*zi

def get_line_coordinates(angle, numPts, segLen, absOri=0, ordOri=0):
    """return a set of abscissa and ordinates of a suface that is tilted by
    ``angle`` w.r.t. the horizontal axis

    angle : float
        angle, in degrees, of the line with respect to horizontal axis
    numPts : integer
        number of points. If ``numPts`` is odd, then the point (absOri,ordOri)
        is also included. If ``numPts`` is even, the point is included, although
        the line should pass through the point anyway.
    segmentLen : float
        distance between points

    Returns
    -------
    abscissae : list
        the list of abscissae of the coordinates
    ordinates : list
        the list of corresponding ordinates of the coordinates
    """
    vec = range(-(numPts//2), numPts//2+1)
    if is_even(numPts):
        vec.remove(0)
    abscissae = [absOri + segLen*i*cosd(angle) for i in vec]
    ordinates = [ordOri + segLen*i*sind(angle) for i in vec]
    return abscissae, ordinates

def draw_scheimpflug_img(f, uo, vo, beta, alphai, posf_z, posf_y, lp_z, lp_y,
                         fp_z, fp_y, scheimpflugLnFmLensCtr, hingeLnFmFFocalPt):
    """function to draw all the planes
    """
    # Figure
    #fig, ax = plt.subplots(1,1)
    fig = plt.figure()
    ax = fig.add_axes([0.0, 0.0, 1.0, 1.0])
    zcoordiantes = posf_z + lp_z + fp_z
    xlimMin, xlimMax = min(zcoordiantes) - 5, max(zcoordiantes) + 5
    if scheimpflugLnFmLensCtr:
        iPt = scheimpflugLnFmLensCtr
        ycoordinates =  posf_y + lp_y + fp_y + [iPt, -0.2*iPt]
    else:
        ycoordinates =  posf_y + lp_y + fp_y
    ylimMin, ylimMax = min(ycoordinates) -5, max(ycoordinates) + 5
    ax.set_xlim([xlimMin, xlimMax])
    ax.set_ylim([ylimMin, ylimMax])
    # draw the rigid camera image and object planes
    ax.axvline(x=-uo, ymin=0.1, ymax=0.9, color='#AAAAAA', linewidth=1.0)
    ax.axvline(x=vo, ymin=0.1, ymax=0.9, color='#AAAAAA', linewidth=1.0)
    # draw the PoSF, lens and focal planes
    ax.plot(lp_z, lp_y, lw=2)        # lens plane
    ax.plot(posf_z, posf_y, lw=2)    # posf plane
    ax.plot(fp_z, fp_y, lw=2)        # focal plane
    # draw lines of intersection
    if scheimpflugLnFmLensCtr:
        ax.plot([posf_z[0], 0], [posf_y[0], scheimpflugLnFmLensCtr],
                color="#AAAAAA", linewidth=1.0)
        ax.plot([fp_z[-1], 0], [fp_y[-1], scheimpflugLnFmLensCtr],
                color="#AAAAAA", linewidth=1.0)
        ax.plot([-f, -f], [0, hingeLnFmFFocalPt],
                color="#AAAAAA", linewidth=1.0, linestyle='dashed')
        ax.plot([0, -f], [0, hingeLnFmFFocalPt],
                color="#AAAAAA", linewidth=1.0, linestyle='dashed')
        ax.scatter([0, -f], [scheimpflugLnFmLensCtr, hingeLnFmFFocalPt],
                   c=['b', 'r'])
    # set ticks and spines
    mpu.set_spines(axes=[ax], stype='center_data')
    #majTicLoc = plt.MultipleLocator(10)
    #minTicLoc = plt.MultipleLocator(5)
    majTicLoc = plt.MaxNLocator(20)
    minTicLoc = plt.MaxNLocator(40)
    ax.xaxis.set_major_locator(majTicLoc)
    ax.xaxis.set_minor_locator(minTicLoc)
    ax.yaxis.set_major_locator(majTicLoc)
    ax.yaxis.set_minor_locator(minTicLoc)
    ax.set_aspect('equal')
    # Display text information
    fpText = "$v_o = {:2.2f}, \\, \\alpha_i = {:2.2f}$".format(vo, alphai)
    posfText = "$u_o = {:2.2f}, \\, \\beta = {:2.2f}$".format(uo, beta)
    ax.text(-0.3, 0.14, fpText, transform=ax.transAxes, fontsize=14)
    ax.text(-0.3, 0.10, posfText, transform=ax.transAxes, fontsize=14)
    plt.show()

def render_scheimpflug_obj_tilt(f, uo, beta):
    """render scheimpflug imaging configuration using object tilt
    """
    vo = gaussian_lens_formula(u=uo, f=f)
    alphai = get_alphai(beta, uo, vo)
    lp_z, lp_y = get_line_coordinates(angle=90, numPts=3, segLen=10)
    posf_z, posf_y = get_line_coordinates(angle=90+beta, numPts=3, segLen=20,
                                          absOri=-uo, ordOri=0)
    #
    fp_y = [get_ydash_from_y_uo_beta(f, beta, uo, y) for y in posf_y]
    fp_z = [get_zdash(f, beta, uo, y, z) for y, z in zip(posf_y, posf_z)]
    try:
        scheimpflugLnFmLensCtr = -vo/tand(alphai)
        hingeLnFmFFocalPt = -(uo-f)/tand(beta)
    except ZeroDivisionError:
        scheimpflugLnFmLensCtr = None
        hingeLnFmFFocalPt = None
    draw_scheimpflug_img(f, uo, vo, beta, alphai, posf_z, posf_y, lp_z, lp_y,
                         fp_z, fp_y, scheimpflugLnFmLensCtr, hingeLnFmFFocalPt)

def render_scheimpflug_fp_tilt(f, vo, alphai):
    """render scheimpflug imaging configuration using focal plane tilt
    """
    uo = gaussian_lens_formula(v=vo, f=f)
    beta = get_beta(alphai, vo, uo)
    lp_z, lp_y = get_line_coordinates(angle=90, numPts=3, segLen=10)
    fp_z, fp_y = get_line_coordinates(angle=90-alphai, numPts=3, segLen=20,
                                      absOri=vo, ordOri=0)
    #
    posf_y = [get_y_from_ydash_vo_alphai(f, alphai, vo, ydash) for ydash in fp_y]
    posf_z = [get_z(f, alphai, vo, ydash, zi) for ydash, zi in zip(fp_y, fp_z)]
    try:
        scheimpflugLnFmLensCtr = -vo/tand(alphai)
        hingeLnFmFFocalPt = -(uo-f)/tand(beta)
    except ZeroDivisionError:
        scheimpflugLnFmLensCtr = None
        hingeLnFmFFocalPt = None
    draw_scheimpflug_img(f, uo, vo, beta, alphai, posf_z, posf_y, lp_z, lp_y,
                         fp_z, fp_y, scheimpflugLnFmLensCtr, hingeLnFmFFocalPt)


if __name__=="__main__":
    #import numpy.testing as _nt
    #render_scheimpflug_obj_tilt(f=20, uo=60, beta=28.188)
    #render_scheimpflug_obj_tilt(f=12, uo=25, beta=5.993)
    render_scheimpflug_fp_tilt(f=25, vo=28, alphai=5)

