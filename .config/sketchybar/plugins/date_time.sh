#!/bin/bash
# sketchybar -m --set $NAME label="$(date '+%a %d %b %H:%M')"

sketchybar --set $NAME label="$(date +'%a %d %b %I:%M %p')"
