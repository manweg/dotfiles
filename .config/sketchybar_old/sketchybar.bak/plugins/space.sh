#!/usr/bin/env bash

if [ "$SELECTED" = "true" ]; then
  sketchybar -m --set $NAME background.color=0xabcecece
else
  sketchybar -m --set $NAME background.color=0x00ffffff
fi
