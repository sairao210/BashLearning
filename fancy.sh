#!/usr/bin/env bash

#current pid
echo $$

#exit status of previous cmd
echo $?

#fancy space separated strings
echo "Expression: files {a,b,c}.js becomes:"
echo files {a,b,c}.js

# ls open file descriptors for a process
lsof -p $$

#varaible indirection ${!x}
x=abc
abc=finaloutput
echo ${!x}

str='sai is good not bad'
#removing the suffix
echo ${str%not bad}
#removing the prefix
echo ${str#sai}