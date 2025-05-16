#!/bin/bash

sketchybar --add item media center \
                       --set media label.color=$WHITE \
                       update_freq=5 \
                       scroll_texts=on \
                       icon.color=$WHITE \
                       background.drawing=off \
                       script="$PLUGIN_DIR/media.sh" \
                       --subscribe media media_change 


# sketchybar --add item separator_media right \
#                        --set separator_media icon="|" \
#                        icon.color=$WHITE \
#                        icon.padding_left=3 \
#                        icon.padding_right=3 \
#                        label.drawing=off \
#                        background.drawing=off
