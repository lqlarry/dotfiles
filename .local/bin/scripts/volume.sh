#!/usr/bin/env bash

# # Get the current volume
# volume=$(pactl list sinks | awk -F '=' '/sink_volume/{print $2}')
# 
# # Check if the volume is muted
# muted=$(pactl list sinks | awk -F '=' '/muted/{print $2}')
# 
# # If the volume is muted, unmute it
# if [[ $muted == "yes" ]]; then
#   pactl set-sink-mute @DEFAULT_SINK@ false
# fi
# 
# # Send a notification with the current volume
# notify-send -i audio-volume-high -t 5000 "Volume: $volume%"

# This script will display a notification when the volume is changed.

# Get the current volume level.
# volume=$(amixer get Master | awk -F '%' '{print $2}')
# volume=$(amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1)
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk 'NR==1{print $5}')

# Check if the volume is muted.
if [[ $volume == 0 ]]; then
  muted=1
else
  muted=0
fi

# Create the notification.
notification="Volume: $volume"
if [[ $muted == 1 ]]; then
  notification="$notification (muted)"
fi

# Send the notification.
dunstify -i audio-volume-high-symbolic -t 1000 -r 2593 -u normal "$notification"
