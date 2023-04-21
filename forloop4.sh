#!/bin/bash -x
echo "ENTER THE NUMBER(start end):"
read start end
echo "PRIME NUMBER BETWEEN $start and $end are :"
for (( num=$start; num<=$end; num++ ))
do
    if [ $num -le 1 ]
    then 
      continue
    fi
 is_prime=true
 for (( i=2; i<$num; i++ ))
 do
   if [ $((num%i)) -eq 0 ]; then
     is_prime=false
     break
   fi
 done
  if [ "$is_prime" = true ]; then
     echo "$num"
  fi
done
