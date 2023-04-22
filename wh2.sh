#!/bin/bash -x
head=0
tail=0
while [ $head -lt 11 ] && [ $tail -lt 11 ]
do
   result=$((RANDOM % 2))
   if [ $result -eq 0]
   then
       head=$((head+1))
       echo "head"
   else
       tail=$((tail+1))
       echo "tail"
   fi
done
