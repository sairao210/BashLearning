#!/usr/bin/env bash

#print all the cmd line arguments one per line

#using a for loop and parameter expansions
echo "Using for loop and parameter expansions"
for argument in $@; do
    echo $argument
done

#using shift method in while loop
echo "Using while loop, shift"
while [[ ! -z $1 ]]; do
    echo $1
    shift
done

