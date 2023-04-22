#!/bin/bash -x
echo "ENTER THE number"
read n
power=1

while [ $power -le 256 ] && [ $power -le $((2**n)) ]
do
  echo $power
  power=$((power*2))
done
