#!/bin/bash

CPU=(
  update_freq=15
  icon.font="$FONT:Regular:15.0"
  icon=􀫥
  icon.color=$PEACH
  icon.padding_left=7
  script="$PLUGIN_DIR/cpu.sh"
  click_script="$PLUGIN_DIR/open_am.sh"
)

sketchybar --add item cpu left \
  --set cpu "${CPU[@]}"
