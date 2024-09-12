#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
           background.border_color=0xff000000 \
           background.border_width=2 \
           --subscribe volume volume_change \
