#!/bin/bash

if [ ! -f /tmp/state.txt ]; then
  printf '󰅶'
  exit 0
fi

name=$(cat /tmp/state.txt)
if [ $(cat /tmp/state.txt) -eq "0" ]; then
  printf '󰾪'
  exit 0
fi

printf '󰅶'
exit 0
