#!/bin/sh

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

case ${PERCENTAGE} in
  9[0-9]|100) ICON="BATTERY:"
  ;;
  [6-8][0-9]) ICON="BATTERY:"
  ;;
  [3-5][0-9]) ICON="BATTERY:"
  ;;
  [1-2][0-9]) ICON="BATTERY:"
  ;;
  *) ICON="BATTERY:"
esac

if [[ $CHARGING != "" ]]; then
  ICON="BATTERY:"
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set $NAME icon="$ICON" label="${PERCENTAGE}%"
