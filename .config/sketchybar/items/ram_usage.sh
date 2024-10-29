#!/bin/bash

sketchybar --add item ram right \
                              --set ram update_freq=2 \
                              icon="RAM:" \
                              icon.color=$BLUE \
                              script="$PLUGIN_DIR/ram_usage.sh"
#
# Add a separator after the RAM usage item
sketchybar --add item separator_ram right \
                              icon.color=$WHITE \
                              icon.padding_left=5 \
                              icon.padding_right=5 \
                              label.drawing=off \
                              background.drawing=off
