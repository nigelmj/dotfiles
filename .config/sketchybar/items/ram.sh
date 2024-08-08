#!/bin/bash

RAM=(
  update_freq=15
  icon.font="$FONT:Regular:15.0"
  icon=􀫦
  icon.color=$MAUVE
  icon.padding_left=5
  script="$PLUGIN_DIR/ram.sh"
)

sketchybar --add item ram left \
            --set ram "${RAM[@]}"
