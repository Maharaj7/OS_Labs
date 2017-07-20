#!/bin/bash

x=200
y=100
name = "maharaj"
export name
math(){
   local x=$1
   local y=$2
   echo $(( $x * $y ))
}

echo "x: $x and y: $y"
math 5 20

echo "x: $x and y: $y after calling match()"
echo $(( $x + $y ))
