# #!/bin/bash
#
# STATE="$(echo "$INFO" | jq -r '.state')"
# if [ "$STATE" = "playing" ]; then
#   MEDIA="$(echo "$INFO" | jq -r '.title + " - " + .artist')"
#   sketchybar --set $NAME label="$MEDIA" drawing=on
# else
#   sketchybar --set $NAME drawing=off
# fi


#!/bin/bash

APP="Spotify"
STATE=$(osascript -e "tell application \"$APP\" to player state as string")

if [ "$STATE" = "playing" ]; then
    TRACK=$(osascript -e "tell application \"$APP\" to name of current track as string")
    ARTIST=$(osascript -e "tell application \"$APP\" to artist of current track as string")

    sketchybar --set $NAME label="$ARTIST – $TRACK" 
else
    sketchybar --set $NAME label="" 
fi
