#!/bin/sh

if test -f ~/.config/polybar/scripts/active.tmp; then
  #echo "%{F#2193ff}"
  echo "%{F#83a5be}"
else
  echo "%{F#66ffffff}"
fi
