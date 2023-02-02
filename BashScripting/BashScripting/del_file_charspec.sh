#!/bin/sh
# Author : Soroush Novin
#Date: 18 may 2021

# Script follows here for different characters:

#first White spaces/ > * other file names ==> Put filenames in quotes
rm -v ">filename"   # -v : verbose
rm -v "*file"
rm -v "white space file name"

#Second for files with names start with dash (-) ==> use a ./ at the beginning of the filename
$ rm -v ./-file

#Third approach is useful to delete everything ==> put -- at the beginning of the filename
rm -v -- -file
rm -v -- --file
rm -v -- "@#$%^&file"

#Fourth ==> Remove file by an inode number
ls -li  # inode number is located in first column
find . -inum <inode number> -delete