#!/bin/bash

sketchybar --add item wifi right \
           --set wifi update_freq=2 \
                      icon="wifi:"  \
                      icon.color=$BLUE \
                      script="$PLUGIN_DIR/wifi.sh"
#
sketchybar --add item separator_wifi right                   \
           --set separator_wifi icon="|"                      \
                              icon.color=$WHITE              \
                              icon.padding_left=3            \
                              icon.padding_right=3           \
                              label.drawing=off              \
                              background.drawing=off
