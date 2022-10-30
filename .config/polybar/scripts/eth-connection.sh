#!/bin/sh

aux=$(ifconfig enx000ec6684594 2> /dev/null)
output=$?

if [ $output -eq 0 ]
then
  if [ $(ifconfig enx000ec6684594 | grep -w 'inet' | awk -F ' ' '{print $2}' | wc -l) -gt 0 ]
  then
    echo "%{F#83a5be}%{F-} $(ifconfig enx000ec6684594 | grep -w 'inet' | awk -F ' ' '{print $2}')"
  else
    echo "%{F#83a5be}%{F#707880} "
  fi
else
  echo "%{F#83a5be}%{F#707880} "
fi
