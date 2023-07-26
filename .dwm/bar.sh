#!/usr/bin/env bash

# Change this depending on your battery in /sys/class/power_supply/
battery="BAT0"
icon="🔋"

has_battery() {
    if [ -d "/sys/class/power_supply/$battery" ]; then
        return 0
    else
        return 1
    fi
}

get_battery_status() {
    charge="$(get_charge)"
    echo "| $icon $charge%"
}

get_charging_status() {
    cat "/sys/class/power_supply/$battery/status"
}

get_charge() {
    cat "/sys/class/power_supply/$battery/capacity"
}

get_datetime() {
    date +"🗓 %a %d %b %Y | 🕓 %I:%M %p %Z | "
}

get_disk_free_space() {
    df -h | awk '/\/$/ {print $4}'
}

get_weather() {
    weather="$(sh $HOME/.local/bin/weather.read)"
    # weather_icon="☀️"
    # echo "| $weather_icon $weather"
    echo "| $weather"
}

get_status() {
    battery_status=""
    if has_battery; then
        battery_status=" $(get_battery_status) |"
    fi
    echo " 💿 $(get_disk_free_space) $(get_weather) ${battery_status} $(get_datetime) "
}

while true; do
    xsetroot -name "$(get_status)"
    sleep 30
done

