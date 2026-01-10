#!/bin/bash

below_count=0

while  [ true ];
do
    if [ $(upower -d | grep percentage | grep -o -m 1 -E '[0-9]+') -le 8 ]; then
        below_count=$((below_count + 1 ))
        #echo "it's $below_count"
        if [ $below_count == 1 ]; then
            dunstify -u critical "BATTERY LOW PLEASE CHARGE";
        fi
    else
        below_count=0
        #echo "it's $below_count"
    fi
sleep 60s
done