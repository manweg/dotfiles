
#!/bin/bash

sketchybar --add item date right \
           --set date  \
                      update_freq=30 \
                      icon="DATE:"  \
                      icon.color=$BLUE \
                      label.color=$WHITE \
                      script="$PLUGIN_DIR/date.sh"

sketchybar --add item separator_date right                   \
           --set separator_date icon="|"                      \
                              icon.color=$WHITE              \
                              icon.padding_left=3            \
                              icon.padding_right=3           \
                              label.drawing=off              \
                              background.drawing=off
