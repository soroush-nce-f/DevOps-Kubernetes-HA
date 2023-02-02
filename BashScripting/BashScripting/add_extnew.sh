#!/bin/sh
# Author : Soroush Novin
#Date: 18 may 2021

# Script follows here:
echo "Please, enter your specified directory:"
read DIR
cd
cd "$DIR" || exit
echo
for f in *;
do
    if [ -f "$f" ]; then
        mv "$f" "$f.new"
    fi
done