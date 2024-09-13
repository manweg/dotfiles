#!/bin/bash

sketchybar --add item media center \
           --set media label.color=$WHITE \
                       scroll_texts=on \
                       icon.color=$WHITE   \
                       background.drawing=off \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change
