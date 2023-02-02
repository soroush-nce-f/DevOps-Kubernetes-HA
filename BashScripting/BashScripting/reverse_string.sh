#!/bin/sh
#@Author soroush novin
#Date: 15 may 2021

#First = reverse the elements in an array
echo " **** Program to Reverse a String **** "
read -p " Enter Here : " text

echo "You have entered : " $text
arr=($text)

arrlength=${#arr[@]} #number of words in array

echo -n "Reverse of String : "

arrlength=`expr $arrlength - 1`

while [ $arrlength -ge 0 ]
do
echo -n ${arr[arrlength]}
echo -n " "
arrlength=`expr $arrlength - 1`
done
echo
echo

#Sexond = reverse elements and every single words in an array
 
read -p "Enter a string: " str
length=${#str}
echo "number of elements is equal to = $length"
echo
i=$((length-1))
while [ $i -ge 0 ]
do
	revstr=$revstr${str:$i:1}
	i=$((i-1))
done
echo "Reverse of $str is $revstr"
