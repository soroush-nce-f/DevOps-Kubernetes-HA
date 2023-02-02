#!/bin/sh
# Author : Soroush Novin
#Date: 19 may 2021

# Script follows here to indicate difference between $* and $@:
# we should pass list of all arguments to the script. 


echo "Using \"\$*\": consider as one whole argument" 
for a in "$*"; do
    echo $a;
done

echo -e "\nUsing \$*: consider every single word"
for a in $*; do
    echo $a;
done

echo -e "\nUsing \"\$@\": consider arguments in double quotation as one element"
for a in "$@"; do
    echo $a;
done

echo -e "\nUsing \$@: consider every single word"
for a in $@; do
    echo $a;
done        