#!/bin/bash

CALENDAR=(
  updates=10
  icon.drawing=off
  label.padding_left=10
  label.padding_right=6
  background.padding_right=2
  script="$PLUGIN_DIR/calendar.sh"
  click_script="$PLUGIN_DIR/zen.sh"
)

sketchybar --add item calendar right \
            --set calendar "${CALENDAR[@]}"
