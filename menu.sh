#!/bin/bash


userInfo()
{
    echo "Enter your first name "
	read fname
    echo "Enter last name "
	read lname
}

calculate()
{
   echo "ADD or MUL"
	echo "what would u like to do"
	read q
	if [ $q = "ADD" ]; then
	echo "enter number 1"
	read num1
	echo "enter number 2"
	read num2
	echo "enter number 3"
	read num3
  	let b="$num1+$num2+$num3"
	elif [ $q = "MUL" ]; then
 
       for(( i=0;i<3;i++ ))do
	echo "enter number 1"
	read num1
	#echo "enter number 2"
	#read num2
	#echo "enter number 3"
	#read num3
  	SUM=$(( SUM+num1 ))
         done
else
	echo "Invalid!!"
     fi
   echo "Hi $fname $lname, you have selected to find the $q of $num1[0],$num2[1] and $num3[2]. the result is $SUM"
}

menu(){
    echo "a. Enter User Information"
    echo "b. Calculator"
    echo "c. Exit Program"
    echo 
    echo "Enter selection "
	read sel
	case $sel in
a)
    userInfo; sleep 1; menu
	;;
b)
    calculate; sleep 1; menu
        ;;
  esac
}
menu
exit 0

