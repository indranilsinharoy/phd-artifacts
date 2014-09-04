# -*- coding: utf-8 -*-
"""
Purpose : Create a point source target to be displayed in an LCD monitor at
          a certain distance from an imager that is being characterized.
          One can create several point sources long the central row and column.
          The point sources' size is specified by the number of (odd) pixels.
          In addition to point sources, one can draw 2 lines in each horizontal
          and vertical direction that can aid for focusing and locating the
          point sources when the target is seen through the camera.

Created on Mon Sep 01 11:52:53 2014

@author: Indranil
"""

# TODO !!!
# 1. change into functions
# 2. first frame is in all colors .... lines and dots (for focusing aid)
# 3. subsequent frames shall be in 1 color ....

from __future__ import division, print_function
import numpy as np
import iutils.exputils.imaging as eiu
import iutils.pyutils.display as diu

#import matplotlib.pyplot as plt
#import matplotlib as mpl
#mpl.rcParams['toolbar'] = 'None' # To remove toolbar

from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import Tkinter as Tk

root = None   # TODO!!! embed into a "figure" class

# Program control parameters
DEBUG_PRINTING_ON = False

# Changes based on monitor
col_px, row_px = 648, 480   #diu.getPrimaryScreenResolution()
ppi = eiu.get_ppi(device='surface_pro3')  # 'surface_pro3' 'vaioVPCF1'

# Target control parameters
# The following 3 paramaeters are set based on the display monitor
display_img = 0 # 0 = dots centered
                # 1 = dots shifted by 'shift_dots_pix' pixels to top
                # 2 = dots shifted by 'shift_dots_pix' pixels to right
                # 3 = dots shifted by 'shift_dots_pix' pixels to bottom
                # 4 = dots shifted by 'shift_dots_pix' pixels to left

shift_dots_pix = 1  # shift dots by 'shift_dots_pix' pixels for subsequent images

DRAW_LINES = True
lines_num_px = 1
line_gap_num_px = 20  # even
pt_src_num_px = 1     # odd only (1, 3, 5, etc)
pt_src_off = 20       # pixel offsets between point sources
petal_length = 3       # number of pixels in the 4 arms/petals around the central

# Target base
src = np.zeros((row_px, col_px), dtype=np.float)

# point sources
def draw_pt_src(row_px, col_px, pt_src_num_px, row_off, col_off):
    global DEBUG_PRINTING_ON
    pt_src_row_beg = row_off + row_px//2 -  (pt_src_num_px - 1)/2
    pt_src_row_end = pt_src_row_beg + pt_src_num_px
    pt_src_col_beg = col_off + col_px//2 - (pt_src_num_px -1)/2
    pt_src_col_end = pt_src_col_beg + pt_src_num_px
    src[pt_src_row_beg:pt_src_row_end, pt_src_col_beg:pt_src_col_end] = 1
    if DEBUG_PRINTING_ON:
        print("Pt src row: ", pt_src_row_beg, pt_src_row_end)
        print("Pt src col: ", pt_src_col_beg, pt_src_col_end)

# Functions for drawing icons
def show_plus_icon(grid, row_tl, col_tl, side=20, thick=4):
    grid[row_tl:row_tl+side, col_tl+side/2-thick/2:col_tl+side/2+thick/2] = 0.35
    grid[row_tl+side/2-thick/2:row_tl+side/2+thick/2, col_tl:col_tl+side] = 0.35
    #print(row_tl, row_tl+side, col_tl+side/2-thick/2, col_tl+side/2+thick/2)

def show_minus_icon(grid, row_tl, col_tl, side=20, thick=4):
    grid[row_tl:row_tl+side, col_tl+side/2-thick/2:col_tl+side/2+thick/2] = 0.35

def show_square_icon(grid, row_tl, col_tl, side=20, thick=4):
    grid[row_tl+side/2-thick/2:row_tl+side/2+thick/2,
         col_tl+side/2-thick/2:col_tl+side/2+thick/2] = 0.35

def draw_icon(display_img):
    """ The shifts are represented in X-Y
    Zero shift   : o o
    Top shift    : o +
    Right shift  : + o
    Bottom shift : o -
    Left shift   : - o
    """
    screenOff_row, screenOff_col, side, thick, gap = 50, 50, 20, 4, 5
    if display_img == 0:
        show_square_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, thick)
        show_square_icon(src, screenOff_row, col_px - screenOff_col - side, side, thick)
    elif display_img == 1:
        show_square_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, thick)
        show_plus_icon(src, screenOff_row, col_px - screenOff_col - side, side, thick)
    elif display_img == 2:
        show_plus_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, thick)
        show_square_icon(src, screenOff_row, col_px - screenOff_col - side, side, thick)
    elif display_img == 3:
        show_square_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, thick)
        show_minus_icon(src, screenOff_row, col_px - screenOff_col - side, side, thick)
    elif display_img == 4:
        show_minus_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, thick)
        show_square_icon(src, screenOff_row, col_px - screenOff_col - side, side, thick)

if display_img==4:
    row_shift, col_shift = 0, -shift_dots_pix
    draw_icon(4)
elif display_img==3:
    row_shift, col_shift = shift_dots_pix, 0
    draw_icon(3)
elif display_img==2:
    row_shift, col_shift = 0, shift_dots_pix
    draw_icon(2)
elif display_img==1:
    row_shift, col_shift = -shift_dots_pix, 0
    draw_icon(1)
else:
    row_shift, col_shift = 0, 0
    draw_icon(0)

draw_pt_src(row_px, col_px, pt_src_num_px, row_off=row_shift, col_off=col_shift) # central point
for i in range(1, petal_length+1):
    draw_pt_src(row_px, col_px, pt_src_num_px,
                row_off=-pt_src_off*i + row_shift, col_off=col_shift)
    draw_pt_src(row_px, col_px, pt_src_num_px,
                row_off=pt_src_off*i + row_shift, col_off=col_shift)
    draw_pt_src(row_px, col_px, pt_src_num_px,
                row_off=row_shift, col_off=-pt_src_off*i + col_shift)
    draw_pt_src(row_px, col_px, pt_src_num_px,
                row_off=row_shift, col_off=pt_src_off*i + col_shift)


if DRAW_LINES:
    # rows
    line_row_up_beg = row_px//2 - line_gap_num_px/2
    line_row_up_end = line_row_up_beg + lines_num_px
    line_row_down_beg = row_px//2 + line_gap_num_px/2 - lines_num_px
    line_row_down_end = line_row_down_beg + lines_num_px
    # cols
    line_col_left_beg = col_px//2 - line_gap_num_px/2
    line_col_left_end = line_col_left_beg + lines_num_px
    line_col_right_beg = col_px//2 + line_gap_num_px/2 - lines_num_px
    line_col_right_end = line_col_right_beg + lines_num_px

    # set to one
    src[line_row_up_beg:line_row_up_end, :] = 0.4
    src[line_row_down_beg:line_row_down_end, :] = 0.4
    src[:, line_col_left_beg:line_col_left_end] = 0.4
    src[:, line_col_right_beg:line_col_right_end] = 0.4



def project_dark_frame():
    print("Dark frame")

def project_start_frame():
    print("Start frame")

def project_point_src(pattern='centered'):
    print("Point src pattern = {} ".format(pattern))

patterns = ['centered', 'shift_top', 'shift_right', 'shift_down', 'shift_left']
pattern_counter = 0  # TODO !!! do this more elegently

def handle_pattern_projection(key):
    """function to handle the projection of patterns
    """
    global patterns
    global pattern_counter
    num_patterns = len(patterns)

    if key=='start':
        project_start_frame()
    elif key=='right':
        if pattern_counter < num_patterns:
            project_point_src(patterns[pattern_counter])
        else:
            project_dark_frame()
        pattern_counter += 1



def create_blank_slate(figsize, dpi):
    global root
    root = Tk.Tk()
    root.overrideredirect(1)  # Disable title bar and decorations
    #root.wm_title('Embedding in TK')
    fig = Figure(figsize=figsize, dpi=dpi, frameon=False)
    #fig = Figure(frameon=False)
    fig.patch.set_visible(False) # Didn't help the clipping problem
    fig.set_clip_on(False)       # didn't make a difference for the clipping problem
    ax = fig.add_axes([0.0,0.0,1.0,1.0])  #Draw full axis
    ax.patch.set_visible(False)
    ax.xaxis.set_visible(False)
    ax.yaxis.set_visible(False)
    return fig, ax

# Add the callback function
def press(event):
    global root
    print('key pressed: ', event.key) # for debugging
    if event.key == 'escape':
        print("Quit and destroy frame")
        root.quit()
        root.destroy()
    else:
        handle_pattern_projection(event.key)


def show_slate(fig):
    global root
    # a tk.DrawingArea
    canvas = FigureCanvasTkAgg(fig, master=root)
    canvas.show()
    canvaswidget = canvas.get_tk_widget()
    canvaswidget.pack(side=Tk.TOP, fill=Tk.NONE, expand=1)
    canvaswidget.config(borderwidth=0,
                        highlightcolor='#ff0000', highlightthickness=0,) # red just to detect if it is present
    #print(canvaswidget.config()) # for debugging
    # add key press event handling
    fig.canvas.mpl_connect('key_press_event', press)
    Tk.mainloop()




# plot
dpi = int(ppi)
figsize = (col_px/dpi, row_px/dpi)  # width, height
fig, ax = create_blank_slate(figsize, dpi)
ax.imshow(src, 'gray', interpolation='none', origin='lower')
show_slate(fig)

if DEBUG_PRINTING_ON:
    print("Display PPI: ", ppi)
    print("Row up: ", line_row_up_beg, line_row_up_end)
    print("Row down:", line_row_down_beg, line_row_down_end)
    print("Col left: ", line_col_left_beg, line_col_left_end)
    print("Col right:", line_col_right_beg, line_col_right_end)
    print("figsize: ", figsize)