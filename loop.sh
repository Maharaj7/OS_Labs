#!/bin/bash

count=0;
for i in 246
do  
    echo "i is" $i
  let count=count+1
  if [ $count -eq 4 ];then
  echo "break"
	break
    fi
done
echo "the loop was executed $count times"
