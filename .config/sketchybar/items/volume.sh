#!/bin/bash

VOLUME=(
  icon.color=$RED
  background.color=$BG_SEC_COLR
  script="$PLUGIN_DIR/volume.sh"
)

sketchybar --add item volume right \
            --set volume "${VOLUME[@]}" \
            --subscribe volume volume_change
