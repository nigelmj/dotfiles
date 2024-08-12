#!/bin/bash

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9")

SPACE=(
  icon.padding_left=18
  icon.padding_right=18
  label.padding_right=33
  icon.color=$BLUE
  icon.font="$FONT:Bold:16.0"
  icon.highlight_color=$YELLOW
  icon.background.drawing=on
  background.padding_left=-8
  background.padding_right=-8
  background.color=$BG_SEC_COLR
  background.corner_radius=8
  background.drawing=on
  label.drawing=off
  script="$PLUGIN_DIR/spaces.sh"
)

sid=0
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space space.$sid left
  sketchybar --set space.$sid associated_space=$sid
  sketchybar --set space.$sid "${SPACE[@]}"
done

sketchybar --add item space_separator left \
            --set space_separator icon= \
                    icon.font="$FONT:Bold:12.0" \
                    background.padding_left=16 \
                    background.padding_right=0 \
                    label.drawing=off \
                    icon.color=$DARK_WHITE \
