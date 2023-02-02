#!/bin/sh

#@Author Soroush Novin
# Date : 15 may 2021

echo "Please, enter your specified directory:"
read DIR
cd "$DIR" || exit
file=0
dir=0
sub_dir=0
sub_fil=0
for d in *;
do
    if [ -d "$d" ]; then
        dir=$((dir+1))
        cd $d
        for dd in *;
        do
            if [ -d "$dd" ]; then
                sub_dir=$((sub_dir+1))
            elif [ -f "$dd" ]; then
                sub_fil=$((sub_fil+1))
            fi
        done
    else
    	file=$((file+1))
    fi
done
echo "Files $file"
echo "Directories $dir"
echo "Files in subdirectory $sub_fil"
echo "Directories in subdirectory $sub_dir"
