#!/bin/bash
  WIFI=(
  update_freq=10
  icon.color=$TEAL
  background.color=$BG_SEC_COLR
  script="$PLUGIN_DIR/wifi.sh"
)

sketchybar --add item wifi right   \
           --set wifi "${WIFI[@]}" \
           --subscribe wifi wifi_change
