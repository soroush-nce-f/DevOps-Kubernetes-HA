#!/bin/sh

echo " please Enter your desired Input : "
read number
a=$number
while [ "$a" -ge 0 ]
do
    echo -n " $a"
    a=`expr $a - 1`
done
echo
