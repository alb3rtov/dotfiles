#/bin/bash

device_num=$(xinput list | grep "FocalTechPS/2 FocalTech Touchpad" | awk '{print $6}' | cut -c 4-)
tapping_num=$(xinput list-props "FocalTechPS/2 FocalTech Touchpad" | grep "libinput Tapping Enabled" | head -n 1 | awk '{print $4}' | tr -d '()' | sed 's/.$//')

xinput set-prop $device_num $tapping_num 1
