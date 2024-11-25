#!/bin/bash

source "$HOME/.config/sketchybar/items/cpu.sh"
source "$HOME/.config/sketchybar/items/ram.sh"

ACTIVITY_MONITOR=(
  background.corner_radius=8
  background.height=19
  background.color=0x000000
  script="$PLUGIN_DIR/activity_monitor.sh"
)

sketchybar --add bracket activity_monitor cpu ram \
  --set activity_monitor ${ACTIVITY_MONITOR[@]} \
  --subscribe activity_monitor mouse.entered mouse.exited
