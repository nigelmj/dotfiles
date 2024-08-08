#!/bin/bash

VOLUME=(
  icon.color=$RED
  script="$PLUGIN_DIR/volume.sh"
)

sketchybar --add item volume right \
            --set volume "${VOLUME[@]}" \
            --subscribe volume volume_change
