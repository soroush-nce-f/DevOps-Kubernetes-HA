#!/bin/sh
#@Author soroush novin
# Date: 15 May 2021



#while loop
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
echo
#For loop

for var in 1 2 3 5 8 13 21 34 55 89
do
	if [ $var -ge 21 -o $var -eq 8 ]
   then
	   Eq_1=`expr $var % 3`
		gen=`expr $Eq_1 \* 7`
      echo "The value of first condition is $gen"
	else
		sec_out=`expr $var + 4`
      echo "The value of Second condition is : $sec_out"
	fi

done
echo

# until loop
COUNT=0
until [ $COUNT -gt 5 ]; do
        echo Value of count is: `expr $COUNT \* 3`
        let COUNT=COUNT+1
done

# The default value for PS3 is set to #?.
# Change it i.e. Set PS3 prompt
PS3="Enter the desired site to get quick information : "
 
# set shuttle list
select DotinCompany in efanap ifanap helpdesk Jira Portal Mail Hipchat 
do
	case $DotinCompany in
		efanap)
			echo "--------------"
			echo "eFanap website has been set up to check the absence and presence of employees, submit criticisms, suggestions and their working hours."
			echo "--------------"
			;;
		ifanap)
			echo "--------------"		
			echo "iFNAP system has been set up to register requests for tools and equipment required by members" 
			echo "--------------"		
			;;
		helpdesk) 
			echo "--------------"				
		   echo "This panel can be used to request VPN, software installation and support whenever one had a problem with his system"
			echo "--------------"				    
			;;		
		Jira) 
			echo "--------------"		
			echo "Jira system, is a unique planning method, which can be used to track and monitor the activities of team members "
			echo "--------------"							
			;;		
		Portal)
			echo "--------------"		
			echo "In the portal of Datin company, news around the company will be informed"
			echo "--------------"							
			;;
		Mail)
			echo "--------------"		
			echo "It is provided to members to receive and send postal letters with the company address"
			echo "--------------"							
			;;		
		Hipchat)
			echo "--------------"		
			echo "This software or its web version is used for conversation and communication between colleagues"
			echo "--------------"							
			;;
		*)		
			echo "Error: Please try again (select 1..7)!"
			;;		
	esac
done
