#!/bin/bash

  WIFI=(
  update_freq=10
  icon.color=$TEAL
  label.max_chars=16
  script="$PLUGIN_DIR/wifi.sh"
  scroll_texts=on
)

sketchybar --add item wifi right   \
  --set wifi "${WIFI[@]}" \
  --subscribe wifi wifi_change
