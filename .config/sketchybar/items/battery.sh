#!/bin/bash

sketchybar --add item battery right \
           --set battery update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
                      icon.color=$BLUE \
           --subscribe battery system_woke power_source_change

# Add a separator after the RAM usage item
sketchybar --add item separator_battery right                   \
           --set separator_battery icon="|"                      \
                              icon.color=$WHITE              \
                              icon.padding_left=5            \
                              icon.padding_right=5           \
                              label.drawing=off              \
                              background.drawing=off

