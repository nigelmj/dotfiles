#!/bin/bash
CPU=(
  update_freq=2
  icon.font="$FONT:Regular:15.0"
  icon=􀫥
  icon.color=$PEACH
  background.color=$BG_SEC_COLR
  script="$PLUGIN_DIR/cpu.sh"
)

sketchybar --add item cpu right \
            --set cpu "${CPU[@]}"
