#!/usr/bin/env bash

# declare variables explicitly
declare x
declare -u upper
declare -l lower
declare -a array # 0 indexed array
declare -A arr # indexed by string

arr[name]="sai"
arr[age]=25
greet="Hello"

#print to stdout
echo ${greet} name: ${arr[name]} of age: ${arr[age]}

#print to stderr
echo "this is an error" >&2

#read input from terminal and store them in variables
#space separated , this example uses HERE document
read a b c <<EOF
apple bananna orange
EOF
echo a is $a, b is $b, c is $c

#arthimetic operations using (())
((x=1+2))
echo "1+2 is ${x}"