#!/bin/bash

echo "while loop"
Count=0;
while [ $Count -lt 5 ]; do
  echo "Count is" $Count
  let Count=Count+1
done

