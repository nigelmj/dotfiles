#!/bin/bash

source "$HOME/.config/sketchybar/icons.sh"
source "$HOME/.config/sketchybar/colors.sh"

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

if [ "$(sketchybar --query front_app | jq -r ".label.color")" == "$BG_PRI_COLR" ]; then
  COLOR=$BG_PRI_COLR
elif [ $PERCENTAGE -le 20 ] && [ "$CHARGING" = "" ]; then
  COLOR=$RED
else
  COLOR=$GREEN
fi

case ${PERCENTAGE} in
  9[0-9]|100) ICON="$BATTERY_100_ICON" ;;
  [6-8][0-9]) ICON="$BATTERY_75_ICON" ;;
  [3-5][0-9]) ICON="$BATTERY_50_ICON" ;;
  [1-2][0-9]) ICON="$BATTERY_25_ICON" ;;
  *) ICON="$BATTERY_0_ICON"
esac

if [[ $CHARGING != "" ]]; then
  ICON="$BATTERY_BOLT_ICON"
fi

sketchybar --animate tanh 20 --set $NAME icon="$ICON" icon.color="$COLOR" label="${PERCENTAGE}%"
