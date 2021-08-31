#!/usr/bin/env bash

declare -a arr
#while loop
#populate the array
((i=0))
while ((i<10)); do
    echo $i
    arr[i]="${i}-Item"
    ((i=i+1))
done

#normal for loop
for item in "item1" "item2" item3; do
    echo $item
done

#looping over the array
#below is using the parametric expansion
echo "expanding array to space separated: ${arr[@]}"
for item in ${arr[@]}; do
    echo $item
done