#!/usr/bin/env bash

# xrandr --output eDP --scale .8x.8 &
~/.dwm/bar.sh &
feh --bg-scale ~/.wal/tardis.jpg &
nm-applet &
udiskie -t &
mpd &
picom &
polkit-dumb-agent &
blueman-applet &
dunst &
numlockx &
sxhkd -c ~/.config/suckless/sxhkdrc &
xset dpms 0 0 0 && xset s off && xset s noblank &
