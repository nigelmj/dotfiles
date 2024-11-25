#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --animate tanh 20 --set $NAME label="$INFO" icon="$($CONFIG_DIR/plugins/icon_map_fn.sh "$INFO")"
elif [ "$SENDER" = "mouse.entered" ]; then
  sketchybar --animate tanh 5 --set $NAME background.color="$BG_SEC_COLR"
elif [ "$SENDER" = "mouse.exited" ]; then
  sketchybar --animate tanh 5 --set $NAME background.color="$BG_PRI_COLR"
fi
