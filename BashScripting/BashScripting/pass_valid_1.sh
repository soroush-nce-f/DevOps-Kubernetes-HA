#!/bin/sh
#Author : Soroush Novin
#Date: 18 may 2021

# Script follows here:
read -p "please enter password:" pass
count=`echo ${#pass}`

if [[ $count -lt 8 ]];then
echo "Password length should be 8 character"
#exit 1;
fi
echo "Strong password: $pass" | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]" | grep "[@#$%^&*]"

if [[ $? -ne 0 ]];then

echo "Password Must contain uppercase ,lowercase,number and special character"
#exit 2;

fi
