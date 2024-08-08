#!/bin/bash

BATTERY=(
  update_freq=120
  icon.font="$ICON_FONT:Regular:16.0"
  icon.color=$GREEN
  script="$PLUGIN_DIR/battery.sh"
)

sketchybar --add item battery right \
            --set battery "${BATTERY[@]}" \
            --subscribe battery system_woke power_source_change
