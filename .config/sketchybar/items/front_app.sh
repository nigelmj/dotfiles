#!/bin/bash

FRONT_APP=(
  label.font="$FONT:ExtraBold:13.0"
  icon.font="sketchybar-app-font:Regular:14.0" \
  icon.color=$BG_PRI_COLR
  label.color=$BG_PRI_COLR
  background.color=$SKY
  script="$PLUGIN_DIR/front_app.sh"
)

sketchybar --add item front_app left \
           --set front_app "${FRONT_APP[@]}" \
           --subscribe front_app front_app_switched