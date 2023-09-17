#!/bin/bash

# Get the status of HDMI-1
HDMI_STATUS=$(xrandr | grep "HDMI-1 connected")

# If HDMI-1 is connected
if [ ! -z "$HDMI_STATUS" ]; then
    # Turn off LVDS-1
    xrandr --output LVDS-1 --off

    # Set HDMI-1 to 1920x1080
    xrandr --output HDMI-1 --mode 1920x1080

# If HDMI-1 is not connected
else
    # Set LVDS-1 to 1366x768
    xrandr --output LVDS-1 --mode 1366x768
fi
