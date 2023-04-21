#!/bin/bash -x
echo "ENTER THE NUMBER"
read num
factorial=1
for (( i=1; i<=num; i++))
do
  factorial=$((factorial *i))
done
echo "FACTORIAL OF THE $num IS $factorial"
