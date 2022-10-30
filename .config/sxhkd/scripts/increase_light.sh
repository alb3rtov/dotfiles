#!/bin/bash

value=`cat /sys/class/backlight/intel_backlight/brightness`
sum=$(( $value + 20 ))

echo "$sum" > /sys/class/backlight/intel_backlight/brightness
