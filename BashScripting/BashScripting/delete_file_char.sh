#!/bin/sh
# Author : Soroush Novin
#Date: 18 may 2021

# Script follows here:
echo "Please, enter your specified directory:"
read DIR
cd
cd "$DIR" || exit
rm  *.sh
echo "All files have been deleted"

