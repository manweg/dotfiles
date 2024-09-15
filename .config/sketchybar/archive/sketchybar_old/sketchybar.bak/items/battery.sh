#!/bin/bash

sketchybar --add item battery right \
           --set battery update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
                         background.border_color=0xff000000 \
                         background.border_width=2 \
           --subscribe battery system_woke power_source_change
