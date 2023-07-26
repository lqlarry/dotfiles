#!/usr/bin/env bash

# xrandr --output eDP --scale 0.70x0.70 &
xrandr --output eDP --scale-from 1920x1080 && xrandr --output HDMI-A-0 --same-as eDP &
feh --bg-scale ~/.wal/tree.jpg &
udiskie &
nm-applet &
mpd &
picom &
polkit-dumb-agent &
numlock &
blueman-applet &
