#!/bin/bash
  WIFI=(
  update_freq=10
  icon=$WIFI_CONN_ICON
  icon.color=$TEAL
  icon.padding_right=-5
  background.color=$BG_SEC_COLR
  script="$PLUGIN_DIR/wifi.sh"
)

sketchybar --add item wifi right   \
           --set wifi "${WIFI[@]}" \
           --subscribe wifi wifi_change
