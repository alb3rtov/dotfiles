#!/bin/sh

if test -f ~/.config/polybar/scripts/active.tmp; then
  rm ~/.config/polybar/scripts/active.tmp
  bspc monitor eDP-1 -d TERM NET DEV SOFT MEDIA
else
  bspc monitor eDP-1 -d TERM DEV SOFT
  bspc monitor HDMI-1 -d NET MEDIA
  touch ~/.config/polybar/scripts/active.tmp
fi
