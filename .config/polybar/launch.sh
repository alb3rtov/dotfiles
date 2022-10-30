#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
#killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

if [[ $(xrandr -q | grep 'DP-1 disconnected') ]]; then
  polybar laptop 2>&1 | tee -a /tmp/polybar3.log & disown
else
  polybar internal 2>&1 | tee -a /tmp/polybar1.log & disown
  
  if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
    polybar external 2>&1 | tee -a /tmp/polybar2.log & disown
  fi
fi

echo "Bars launched..."
