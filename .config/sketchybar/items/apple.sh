#!/bin/bash

APPLE=(
  icon=$APPLE_ICON
  icon.color=$PURE_WHITE
  icon.padding_left=4
  icon.font="$FONT:Regular:18.0"
  icon.y_offset=1
  label.drawing=off
  background.padding_left=0
  background.padding_right=22
  background.color=$BG_PRI_CLOR
)

sketchybar --add item apple left \
  --set apple "${APPLE[@]}"
