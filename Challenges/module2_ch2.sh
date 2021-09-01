#!/usr/bin/env bash

((i=0))
((total_rss=0, total_sz=0))
while read input; do
    if ((i>0)); then
        ((j=0))
        for item in $input; do
            if ((j==7)); then
                ((total_rss += item))
            else if ((j==8)); then
                ((total_sz += item))
                fi
            fi
            ((j++))
        done
    fi    
    ((i++))
done <<< $(ps -ly)

echo "Total RSS: $total_rss", "Total SZ: $total_sz"