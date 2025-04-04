#!/bin/bash

sketchybar --add item time right \
           --set time  \
                      update_freq=1 \
                      label.color=$WHITE \
                      script="$PLUGIN_DIR/time.sh"

sketchybar --add item separator_time right                   \
           --set separator_time icon="|"                      \
                              icon.color=$WHITE              \
                              icon.padding_left=3            \
                              icon.padding_right=3           \
                              label.drawing=off              \
                              background.drawing=off

