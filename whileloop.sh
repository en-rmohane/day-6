#!/bin/bash -x
counter=1;
while [ $counter -le 5 ]
do 
    echo  -n "$counter"
    ((counter++));
done
