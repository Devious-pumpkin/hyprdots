#!/bin/bash

below_count=0

while [ true ]; do
  if [ $(upower -d | grep percentage | grep -o -m 1 -E '[0-9]+') -le 10 ]; then
    below_count=$((below_count + 1))
    #echo "it's $below_count"
    if [ $below_count == 1 ]; then
      play ~/.config/hypr/sounds/alert.mp3
      dunstify -u critical "BATTERY LOW PLEASE CHARGE"
    fi
  elif [ $(upower -d | grep percentage | grep -o -m 1 -E '[0-9]+') -le 4 ]; then
    dunstify -u critical "POWERING OFF"
    play ~/.config/hypr/sounds/alert.mp3
    sleep 10s
    poweroff
  else
    below_count=0
    #play ~/.config/hypr/sounds/alert.mp3
    #echo "it's $below_count"
  fi
  sleep 60s
done
