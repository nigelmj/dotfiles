#!/bin/bash

FRONT_APP=(
  label.font="$FONT:ExtraBold:14.0"
  icon.font="sketchybar-app-font:Regular:15.0" \
  icon.color=$SAPPHIRE \
  label.color=$WHITE \
  script="$PLUGIN_DIR/front_app.sh"
)

sketchybar --add item front_app left \
            --set front_app "${FRONT_APP[@]}" \
            --subscribe front_app front_app_switched

sketchybar --add item front_app_separator left \
            --set front_app_separator icon= \
                    icon.font="$FONT:Bold:12.0" \
                    background.padding_left=0 \
                    background.padding_right=0 \
                    label.drawing=off \
                    icon.color=$DARK_WHITE \
