#!/usr/bin/env bash

#challenge - 1
echo "files with unable to fork in the source"
for file in $(ls /usr/bin); do
    if cat /usr/bin/$file | grep -q "unable to fork"; then
        echo $file
    fi
done