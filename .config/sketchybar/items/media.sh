#!/bin/bash

sketchybar --add item media right \
                       --set media label.color=$WHITE \
                       scroll_texts=on \
                       icon.color=$WHITE \
                       background.drawing=off \
                       script="$PLUGIN_DIR/media.sh" \
                       --subscribe media media_change

# sketchybar --add item separator_media right \
#                        --set separator_media icon="|" \
#                        icon.color=$WHITE \
#                        icon.padding_left=5 \
#                        icon.padding_right=5 \
#                        label.drawing=off \
#                        background.drawing=off
