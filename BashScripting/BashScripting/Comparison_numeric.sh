#!/bin/sh
# Author : Soroush Novin
#Date: 15 may 2021


# Script  for numeric comparison follows here:
echo "please, Enter your first number: "
read first_num

echo "Please, Enter the second number to compare: "
read second_num

f1=$first_num
f2=$second_num

if [ $f1 -eq $f2 ] 
then
	echo "$f1 compared to $f2: $first_num  is equal to $second_num !"

elif [ $f1 -gt $f2 ]
then
	echo "$f1 compared to $f2: $first_num is greater than $second_num !"
else
	echo "$f1 compared to $f2: $first_num is lesser than $second_num !"
fi


# script to check string comparisons
str1=a
str2=z
str3=Z
if [ $str1 \> $str2 ] 
then
	echo “$str1 is greater”
else
	echo “$str2 is greater”
fi

# Lower case/upper case scenario
if [ $str3 \> $str1 ] 
then
	echo “$str3 is greater”
else
	echo “$str1 is greater”
fi


# Using file comparison
dir=Desktop/Aarchive/BashScripting
if [ -d $dir ] 
then
	echo “$dir is a directory ”
	cd $dir
	ls
else
	echo “$dir is not a directory”
fi