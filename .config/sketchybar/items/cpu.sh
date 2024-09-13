#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  update_freq=2 \
                      icon="CPU:"  \
                      icon.color=$BLUE \
                      script="$PLUGIN_DIR/cpu.sh"


sketchybar --add item separator_cpu right                   \
           --set separator_cpu icon="|"                      \
                              icon.color=$WHITE              \
                              icon.padding_left=5            \
                              icon.padding_right=5           \
                              label.drawing=off              \
                              background.drawing=off
