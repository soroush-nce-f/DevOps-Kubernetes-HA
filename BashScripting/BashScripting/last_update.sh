#!/bin/sh
#Author : Soroush Novin
#Date: 18 may 2021


# Script for the last updated file or the newest file in a directory follows here:

echo "Please, enter your specified directory:"
read DIR
cd
cd "$DIR" || exit
echo

ls -1rt | tail -1
echo
#or
ls -latr | tail -1
echo
#or
cd
echo
find $DIR -type f -printf "%T@ %p\n" | sort -n | cut -d' ' -f 2- | tail -n 1