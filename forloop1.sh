#!/bin/bash -x
echo "enter the number"
read num
for (( i=0; i<=num; i++ ))
do 
     echo "$((2**i))"
done
