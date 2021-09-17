#!/usr/bin/env bash

c="ls -s | sort -n"
eval ${c}

opts="a b \$1 \$2"
eval set -- "${opts}"
echo $@