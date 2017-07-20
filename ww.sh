#!/bin/bash

echo "bin bash"
Count=0;
while [ $Count -le 10 ];do
   echo "Curent value of Count is" $Count
   let Count=Count+1
done 
