#!/bin/bash

if [ $# -lt 3 ]; then
	echo "Arguments not enough"
exit 1
fi

if [ $2 -eq $2 ] && [ $3 -eq $3 ]; then
  A=$(echo $1 | tr 'a-z' 'A-Z')
  if [ $A = ADD ]; then
	let B="$2+$3"; echo $* = $B
	elif [ $A = MUL ]; then
	let B="$2*$3"; echo $* = $B
	elif [ $A = SUB ]; then
	let B="$2-$3"; echo $* = $B
	elif [ $A = DIV ]; then 
	let B="$2/$3"; echo $* = $B
else
	echo "Function $1 does not exist"
fi
else
	echo "Two numbers are required"
	exit 2
fi
exit 0
