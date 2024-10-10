#!/bin/bash

# Get the SSID of the currently connected Wi-Fi network
# wifi_name=$(networksetup -getairportnetwork en0 | sed 's/^Current Wi-Fi Network: //')
wifi_name=$(system_profiler SPAirPortDataType | awk '/Current Network/ {getline;$1=$1; gsub(":",""); print;exit}')
# Check if connected to a Wi-Fi network
if [ "$wifi_name" = "Wi-Fi is not connected." ]; then
  # echo "Not connected"
  sketchybar --set $NAME label="Not connected"
else
  # echo "$wifi_name"
  sketchybar --set $NAME label="$wifi_name"
fi
