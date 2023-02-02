#!/bin/sh
var=$(date +"%x")
#var=`date`
var2=$(date +"%T")
var3=$(pwd)
u="$USER"
echo "User name: $u"
echo "The current date: $var"
echo "The current time: $var2"
echo "The current directory is $var3"


