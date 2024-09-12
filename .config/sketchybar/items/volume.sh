#!/bin/bash

VOLUME=(
  icon.color=$PINK
  script="$PLUGIN_DIR/volume.sh"
)

sketchybar --add item volume right \
  --set volume "${VOLUME[@]}" \
  --subscribe volume volume_change
