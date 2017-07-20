#!/bin/bash
age=39
if [$age -lt 30]
then 
	echo "you are still under 30"
elif [$age -ge 30 -a $age -lt 40]
then 
	echo "you in your 30s"
else
	echo "you over 40 old ass"
fi

