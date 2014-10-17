from __future__ import print_function
import glob
import os
from subprocess import call 

def execute_html_generator(dirName):
    cmd = ("pandoc {}/labnotes_{}.rst -f rst -t html -s -S -c css/labnotes.css"
          " --highlight-style pygments -o {}/html/labnotes_{}.html"
          .format(dirName, dirName, dirName, dirName))
    call(cmd, shell=True)
    print("done")

# list directories
cdir = os.getcwd()
dirsToExclude = ['css', ]

dirlist = [subdir for subdir in os.listdir(cdir) if os.path.isdir(subdir) and subdir not in dirsToExclude]

print(dirlist)

# run the html generator within each directory
for subdir in dirlist:
    execute_html_generator(subdir)

# build index page in the current directory
cmd =("pandoc labnotes.rst -f rst -t html -s -S -c css/labnotes.css "
      "--highlight-style pygments -o labnotes.html")
call(cmd, shell=True)




