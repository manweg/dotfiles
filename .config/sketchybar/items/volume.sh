#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
                      icon.color=$BLUE \
           --subscribe volume volume_change 

sketchybar --add item separator_volume right                   \
           --set separator_volume icon="|"                      \
                              icon.color=$WHITE              \
                              icon.padding_left=3            \
                              icon.padding_right=3           \
                              label.drawing=off              \
                              background.drawing=off

