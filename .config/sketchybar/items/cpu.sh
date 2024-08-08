#!/bin/bash
CPU=(
  update_freq=15
  icon.font="$FONT:Regular:15.0"
  icon=􀫥
  icon.color=$PEACH
  script="$PLUGIN_DIR/cpu.sh"
)

sketchybar --add item cpu left \
            --set cpu "${CPU[@]}"
