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
# 1. Find-out a way to cycle through the images in the same canvas without
#    destroying and re-creating the canvas
#    refer to this code: http://code.activestate.com/recipes/578063-saving-a-tkinter-canvas-image-or-animation-using-p/

from __future__ import division, print_function
import numpy as np
import iutils.exputils.imaging as eiu
import iutils.pyutils.display as diu
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import Tkinter as _Tk
from scipy.misc import imsave

class pattern_plotter(object):
    def __init__(self, row_px=None, col_px=None, device=None):
        self.root = None
        # Changes based on monitor
        if (col_px is None) or (row_px is None):
            col_px, row_px = diu.getPrimaryScreenResolution()
        dev = 'surface_pro3' if device == None else device
        ppi = eiu.get_ppi(device=dev)
        #print('device =', dev, ', ppi =', ppi)  # for debugging
        dpi = int(ppi)
        figsize = (col_px/dpi, row_px/dpi)  # width, height
        fig = Figure(figsize=figsize, dpi=dpi, frameon=False)
        fig.patch.set_visible(False)
        fig.set_clip_on(False)
        ax = fig.add_axes([0.0, 0.0, 1.0, 1.0])
        ax.set_frame_on(False) # important to get the last little border out
        ax.patch.set_visible(False)
        ax.xaxis.set_visible(False)
        ax.yaxis.set_visible(False)
        self._fig = fig
        self._ax = ax

    # Add the callback function
    def key_press(self, event):
        """function triggered by keyboard event"""
        #print('key pressed: ', event.key) # for debugging
        if event.key == 'escape':
            #print("Quit and destroy frame")
            self.destroy_frame()
            exit()
        else:
            #print("Calling function {}()".format(self._func.__name__)) # for debugging
            self.destroy_frame()
            self._func(self, self._func_kwargs)

    def destroy_frame(self):
        """destroy tk widget"""
        self.root.quit()
        self.root.destroy()

    def call_on_key_press(self, func, **kwargs):
        """register function that will be called on key-press"""
        self._func = func
        self._func_kwargs = kwargs

    def show_slate(self):
        self.root = _Tk.Tk()
        self.root.overrideredirect(1)  # disable title bar and decorations
        # a tk.DrawingArea
        canvas = FigureCanvasTkAgg(self._fig, master=self.root)
        canvas.show()
        canvaswidget = canvas.get_tk_widget()
        canvaswidget.pack(side=_Tk.TOP, fill=_Tk.NONE, expand=1)
        self.root.focus_force()   # This is needed to ensure that focus in on the window
        canvaswidget.config(borderwidth=0,
                            highlightcolor='#ff0000', highlightthickness=0, # red just to detect if it is present
                            highlightbackground='#0000ff',)  # blue border indicates canvas not in focus
        #print(canvaswidget.config()) # for debugging
        # add key press event handling
        self._fig.canvas.mpl_connect('key_press_event', self.key_press)
        _Tk.mainloop()

    def display_image(self, image):
        """top level function to display frame"""
        self._ax.clear()
        self._ax.imshow(image, interpolation='none') #, origin='lower') # shouldn't use this, should display the array as is
        self.show_slate()

# ##################################
# pattern generation functions
# ##################################

def draw_vertical_lens(src, col_offsets, thickness, val=(0.0, 0.9, 0.0)):
    """function to draw vertical lines (inplace)

    Parameters
    ----------
    src : ndarray
        source array of ndim=3 in which to render the lines
    col_offsets : list
        list of column offsets that specify midpoint of the vertical lines from
        the left edge
    thickness : integer
        thickness of the lines
    val : tuple
        color

    Returns
    -------
    None
    """
    row_px, col_px, _ = src.shape
    for off in col_offsets:
        for i in range(3):
            src[:, off-thickness/2 : off+thickness/2, i] = val[i]
    #return src

def draw_guide_lines(src, line_gap_num_px, lines_num_px, val=(0.4, 0.4, 0.4)):
    """function to draw guide lines around the point sources. two vertical
    and two horizontal lines

    Parameters
    ----------
    src : ndarray
        source array of ndim=3, in which to render the lines
    line_gap_num_px : integer (even)
        number of pixels between the surrounding lines (for both vert. & hori.)
    lines_num_px : integer
        thickness of lines in pixels
    val : 3-tuple
        color of the line

    Returns
    -------
    None
    """
    row_px, col_px, _ = src.shape
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
    # set to gray level
    for i in range(3):
        src[line_row_up_beg:line_row_up_end, :, i] = val[i]
        src[line_row_down_beg:line_row_down_end, :, i] = val[i]
        src[:, line_col_left_beg:line_col_left_end, i] = val[i]
        src[:, line_col_right_beg:line_col_right_end, i] = val[i]

# point sources
def draw_pt_src(src, pt_src_num_px, row_off, col_off, val=(1.0, 1.0, 1.0)):
    """function to draw point sources/ dots

    Parameters
    ----------
    src : ndarray
        source array
    pt_src_num_px : integer
        size of each point source in pixels
    row_off : integer
        row offset, used to implement shift in the vertical direction
    col_off : integer
        col offset, used to implement shift in the horizontal direction
    val : 3-tuple
        color of the point source

    Returns
    -------
    None
    """
    row_px, col_px, _ = src.shape
    pt_src_row_beg = row_off + row_px//2 -  (pt_src_num_px - 1)/2
    pt_src_row_end = pt_src_row_beg + pt_src_num_px
    pt_src_col_beg = col_off + col_px//2 - (pt_src_num_px -1)/2
    pt_src_col_end = pt_src_col_beg + pt_src_num_px
    for i in range(3):
        src[pt_src_row_beg:pt_src_row_end, pt_src_col_beg:pt_src_col_end, i] = val[i]

def grid_of_dots(rowPixels, colPixels, dotSize=2, dotSpace=5, dType='u8'):
    """Generate grid of dots pattern

    Parameters
    ----------
    rowPixels : integer
        total number of pixels along dimension 0 (vertical)
    colPixels : inetger
        total number of pixels along dimension 1 (horizontal)
    dotSize : integer
        size of square-dot in pixels
    dotSpace : integer
        number of blank (zero-valued) pixels between the dots
        in horizontal and vertical directions.
    dType : string
        the dtype of grid-of-dots numpy array. Use u8, i8, u16,
        i16, f16 for uint8, int8, uint16, int16, and float16
        respectively

    Returns
    -------
    god : ndarray
        the grid of dots pattern

    Examples
    --------
    >>> grid_of_dots(5, 5, 1, 1)
    array([[0, 0, 0, 0, 0],
           [0, 1, 0, 1, 0],
           [0, 0, 0, 0, 0],
           [0, 1, 0, 1, 0],
           [0, 0, 0, 0, 0]], dtype=uint8)
    """
    types = {'u8':np.uint8, 'i8':np.int8, 'u16':np.uint16,
             'i16':np.int16, 'f16':np.float16}
    # build atomic block
    abSize = dotSize + dotSpace
    ab = np.zeros((abSize, abSize), dtype=types[dType])
    ab[-dotSize:, -dotSize:] = 1
    # print ab # for debugging
    # calculate integer repetition of atomic block
    abNumRepeatCols = colPixels//abSize
    abNumRepeatRows = rowPixels//abSize
    #
    god = np.zeros((rowPixels, colPixels), dtype=ab.dtype)
    r = abNumRepeatRows*abSize
    c = abNumRepeatCols*abSize
    god[:r, :c] = np.kron(np.ones((abNumRepeatRows, abNumRepeatCols), dtype=ab.dtype), ab)
    return god

# Functions for drawing icons
def show_plus_icon(grid, row_tl, col_tl, side=20, thick=4):
    grid[row_tl:row_tl+side, col_tl+side/2-thick/2:col_tl+side/2+thick/2] = 0.35
    grid[row_tl+side/2-thick/2:row_tl+side/2+thick/2, col_tl:col_tl+side] = 0.35

def show_minus_icon(grid, row_tl, col_tl, side=20, thick=4):
    grid[row_tl+side/2-thick/2:row_tl+side/2+thick/2, col_tl:col_tl+side] = 0.35

def show_square_icon(grid, row_tl, col_tl, side=20, thick=4):
    grid[row_tl+side/2-thick/2:row_tl+side/2+thick/2,
         col_tl+side/2-thick/2:col_tl+side/2+thick/2] = 0.35

def draw_icon(src, display_img):
    """ The shifts are represented in ROW-COL format
    Zero shift   : o o
    Top shift    : - o
    Right shift  : o +
    Bottom shift : + o
    Left shift   : o -
    """
    screenOff_row, screenOff_col, side, thick, gap = 50, 50, 20, 4, 5
    if display_img == 0:
        show_square_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, 2*thick)
        show_square_icon(src, screenOff_row, col_px - screenOff_col - side, side, 2*thick)
    elif display_img == 1:
        show_plus_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, thick)
        show_square_icon(src, screenOff_row, col_px - screenOff_col - side, side, 2*thick)
    elif display_img == 2:
        show_square_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, 2*thick)
        show_plus_icon(src, screenOff_row, col_px - screenOff_col - side, side, thick)
    elif display_img == 3:
        show_minus_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, thick)
        show_square_icon(src, screenOff_row, col_px - screenOff_col - side, side, 2*thick)
    elif display_img == 4:
        show_square_icon(src, screenOff_row, col_px - screenOff_col - 2*side - gap, side, 2*thick)
        show_minus_icon(src, screenOff_row, col_px - screenOff_col - side, side, thick)


# ###########################
# main code starts here
# ############################

# Pattern control parameters
#row_px, col_px = 800, 1000
col_px, row_px = diu.getPrimaryScreenResolution()
device = 'surface_pro3' # 'vaioVPCF1'


lines_num_px = 1
line_gap_num_px = 20  # even
pt_src_num_px = 1     # odd only (1, 3, 5, etc)
pt_src_off = 20       # pixel offsets between point sources
petal_length = 3       # number of pixels in the 4 arms/petals around the central

shift_dots_pix = 5  # shift dots by 'shift_dots_pix' pixels for subsequent images
DRAW_LINES = True

col_of_pt_src = (0, 1, 0)   # color/ waelength of the dots

# Specify the patterns to project
patterns = ['dark_frame', 'vert_bars', 'god', 'centered', 'shift_top', 'shift_right', 'shift_down', 'shift_left', ]
pattern_counter = 0  # TODO !!! do this more elegently

gSAVEPATTERNS = False

def get_pattern(pattern, row_px, col_px):
    src = np.zeros((row_px, col_px, 3))
    if pattern == 'dark_frame':
        return src
    elif pattern == 'vert_bars':
        border_offset = 50
        draw_vertical_lens(src, [border_offset, col_px-border_offset], 1)
        return src
    elif pattern == 'god':
        god = grid_of_dots(row_px, col_px, dotSize=1, dotSpace=20).astype(src.dtype)
        src[:,:,1] = god
        return src
    else :
        if pattern == 'centered':
            row_shift, col_shift = 0, 0
            draw_icon(src, 0)
        if pattern == 'shift_top':
            row_shift, col_shift = shift_dots_pix, 0
            draw_icon(src, 1)
        if pattern == 'shift_right':
            row_shift, col_shift = 0, shift_dots_pix
            draw_icon(src, 2)
        if pattern == 'shift_down':
            row_shift, col_shift = -shift_dots_pix, 0
            draw_icon(src, 3)
        if pattern == 'shift_left':
            row_shift, col_shift = 0, -shift_dots_pix
            draw_icon(src, 4)
        #print("pattern: ", pattern)
        # central point
        draw_pt_src(src, pt_src_num_px, row_off=row_shift,
                    col_off=col_shift, val=col_of_pt_src)
        # petals
        for i in range(1, petal_length+1):
            draw_pt_src(src, pt_src_num_px, row_off=-pt_src_off*i + row_shift,
                        col_off=col_shift, val=col_of_pt_src)
            draw_pt_src(src, pt_src_num_px, row_off=pt_src_off*i + row_shift,
                        col_off=col_shift, val=col_of_pt_src)
            draw_pt_src(src, pt_src_num_px, row_off=row_shift,
                        col_off=-pt_src_off*i + col_shift, val=col_of_pt_src)
            draw_pt_src(src, pt_src_num_px, row_off=row_shift,
                        col_off=pt_src_off*i + col_shift, val=col_of_pt_src)
        if DRAW_LINES:
            draw_guide_lines(src, line_gap_num_px, lines_num_px,
                             val=(0.0, 0.3, 0.0))
        return src

#
def show_next_image(pp_obj, kwargs):
    """function called on keyboard input event attached to tkinter widget"""
    global pattern_counter
    global gSAVEPATTERNS
    row_px = kwargs['row_px']
    col_px = kwargs['col_px']
    #print("pattern_counter:", pattern_counter)
    if pattern_counter < len(patterns):
        img = get_pattern(patterns[pattern_counter], row_px, col_px)
        if gSAVEPATTERNS:
            save_size = 200
            row_s = row_px/2 - save_size/2
            row_e = row_px/2 + save_size/2
            col_s = col_px/2 - save_size/2
            col_e = col_px/2 + save_size/2
            imsave(patterns[pattern_counter]+'.png',
                   img[row_s:row_e, col_s:col_e])
        pattern_counter += 1
        pp_obj.display_image(img)
    else:
        print("All patterns projected")
        exit()  # This is not really graceful exit!!! How can I handle this?

# Create plotter object
pp = pattern_plotter(row_px, col_px, device)

# register function to be called on subsequent key-press
pp.call_on_key_press(show_next_image, row_px=row_px, col_px=col_px)

# display first image
src = np.zeros((row_px, col_px, 3))
draw_guide_lines(src, line_gap_num_px, lines_num_px, val=(0.8,0.8,0.8))
pp.display_image(src)