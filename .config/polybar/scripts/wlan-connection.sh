#!/bin/sh

if [ $(ifconfig wlp2s0 | grep -w 'inet' | awk -F ' ' '{print $2}' | wc -l) -gt 0 ]
then
  signal=$(nmcli dev wifi | grep "*" | awk '{print $8}')
  
  if [ $signal -ge 75 ]
  then
    echo "%{F#9feb6a}直%{F-} $(ifconfig wlp2s0 | grep -w 'inet' | awk -F ' ' '{print $2}')"
  elif [ $signal -ge 50 ]
  then
    echo "%{F#f7ed65}直%{F-} $(ifconfig wlp2s0 | grep -w 'inet' | awk -F ' ' '{print $2}')"
  elif [ $signal -ge 25 ]
  then
    echo "%{F#f79d65}直%{F-} $(ifconfig wlp2s0 | grep -w 'inet' | awk -F ' ' '{print $2}')"
  else
    echo "%{F#ed6161}直%{F-} $(ifconfig wlp2s0 | grep -w 'inet' | awk -F ' ' '{print $2}')"
  fi
else
  echo "%{F#83a5be}睊%{F#707880} "
fi
