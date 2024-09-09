#!/bin/bash

CALENDAR=(
  update_freq=10
  icon.drawing=off
  label.padding_left=17
  label.padding_right=15
  label.font="$FONT:Bold:15.0"
  label.color=$WHITE
  background.corner_radius=8
  background.height=19
  script="$PLUGIN_DIR/calendar.sh"
  click_script="$PLUGIN_DIR/zen.sh"
)

sketchybar --add item calendar right \
  --set calendar "${CALENDAR[@]}" \
  --subscribe calendar mouse.entered mouse.exited
