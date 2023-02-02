#!/bin/sh

a=0
while [ "$a" -lt 10 ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done

a=0
b=1
for FILE in $HOME/Desktop/Aarchive/BashScripting/*.sh
do
   echo $FILE
   a=`expr $a + $b` 
done
echo "Total number of files in the specified directory is equal to $a"
