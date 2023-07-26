#!/usr/bin/env bash

# while true; do
#     curl 'wttr.in/gadsden?format=3&u' | cut -d ':' -f 2
#     sleep 300  # Delay in seconds (5 minutes)
# done

curl 'wttr.in/thermal?format=3&u' | cut -d ':' -f 2 | tail -1 > /home/larry/.local/bin/weather.cache


