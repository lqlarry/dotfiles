#!/usr/bin/env bash

# xrandr --output eDP --scale .8x.8 &
~/.dwm/bar.sh &
xrandr --output eDP --scale-from 1920x1080 && xrandr --output HDMI-A-0 --same-as eDP &
xinput set-prop "ELAN0644:00 04F3:31AD Touchpad" "libinput Tapping Enabled" 1 &
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
