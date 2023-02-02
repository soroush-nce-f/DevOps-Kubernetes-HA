#!/bin/sh
#Author : Soroush Novin
#Date: 18 may 2021

# Script follows here:
read -p "please enter your password:" password
len="${#password}"

if test $len -ge 8 ; then
echo "$password" | grep -q [0-9]
    if test $? -eq 0 ; then
    echo "$password" | grep -q [A-Z]
        if test $? -eq 0 ; then
        echo "$password" | grep -q [a-z]   
            if test $? -eq 0 ; then
            echo "$password" | grep -q "[@#$%^&*]"
                if test $? -eq 0 ; then
                echo "Strong password"
                else
                    echo "weak password, include special char"
                fi
            else
                echo "weak password, include lower case char"
            fi
        else
            echo "weak password, include capital char" 
        fi
    else
        echo "weak password, please include numbers in your password"   
    fi
else
    echo "weak password, password lenght should be greater than or equal 8 hence"
fi