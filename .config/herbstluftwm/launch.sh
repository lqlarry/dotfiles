#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar hlwm 2>&1 | tee -a ~/.config/herbstluftwm/logfile.txt & disown

echo "Polybar launched..."
