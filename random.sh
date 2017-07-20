#!/bin/bash

declare -a LIST
for((i=0;i<5;i++))do
LIST[$i]=$RANDOM
done

menu(){
clear
echo "What do you want to do?"
	echo "Enter1: To print array content"
	echo "Enter 2: To print arrays content based on address"
	echo "Enter 3: Summate arrays content"
	echo "Enter 4: To exit program"

read c 
case $c in
1)
	echo "Arrays content: ${LIST[*]}" ;sleep 3; menu
;;
2)
	echo -e "Enter address: \c"; read a
	echo "Address $a has ${LIST[$a]:-no content}"; sleep 2; menu
;;
3)
	for(( i=0; i<5; i++ ))do
		SUM=$(( SUM+LIST[$i] ))
	done
	echo "Sum of contents is: $SUM"; sleep 3 menu
;;
4)
	clear; echo "BYE"
;;

esac
}

menu
exit 0
