#!/bin/sh
# Author : Soroush Novin
#Date: 18 may 2021


# Script  for Sum of all numbers in a file follows here:
#First method => when we have a file with numbers everywhere
SUM=0
for num in $(cat textNumber.txt)
    do
        ((SUM+=num))
done
echo "Sum=$SUM"

#Second method => when we have a file with numbers everywhere

sum_2=0
count=0

for i in `cat textNumber.txt`;
do
    sum_2="$sum_2+$i";
    count=`expr $count + 1`;
done

sum_2=$(echo $sum_2 | bc)   #bc= basic calculator
echo "Sum=$sum_2"


#Third method => when there is one number in each line
awk 'BEGIN{sum=0} {sum=sum+$1} END {print sum}' textNumber.txt

#Fourth method => when there is one number in each line
sum_3=0
while read LINE
do
sum_3=`expr $sum_3 + $LINE`
done < textNumber.txt
echo $sum_3
