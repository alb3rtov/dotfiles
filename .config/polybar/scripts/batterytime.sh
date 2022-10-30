#!/bin/sh

if [ $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'time to empty' | wc -l) -gt 0 ]
then
  echo "$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'time to empty' | awk -F ':' '{print $2}' | sed -e 's/^[ \t]*//')" 
else
  echo "$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'time to full' | awk -F ':' '{print $2}' | sed -e 's/^[ \t]*//')"
fi
