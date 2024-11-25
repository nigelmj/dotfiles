#!/bin/bash

FRONT_APP=(
  icon.padding_left=13
  label.font="$FONT:ExtraBold:14.0"
  icon.font="sketchybar-app-font:Regular:15.0"
  icon.color=$SAPPHIRE
  label.color=$WHITE
  label.padding_left=8
  label.padding_right=15
  background.corner_radius=8
  background.height=19
  script="$PLUGIN_DIR/front_app.sh"
  click_script="$PLUGIN_DIR/app_settings.sh"
)

sketchybar --add item front_app left \
            --set front_app "${FRONT_APP[@]}" \
            --subscribe front_app front_app_switched mouse.entered mouse.exited

sketchybar --add item front_app_separator left \
  --set front_app_separator icon= \
  icon.font="$FONT:Bold:12.0" \
  background.padding_left=0 \
  background.padding_right=5 \
  label.drawing=off \
  icon.color=$DARK_WHITE
