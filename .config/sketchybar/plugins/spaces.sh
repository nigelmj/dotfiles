#!/bin/bash

source "$HOME/.config/sketchybar/icons.sh"

WIDTH="dynamic"
ICON=$GHOST
if [ "$SELECTED" = "true" ]; then
  WIDTH="0"
  ICON=$PACMAN
fi

sketchybar --animate tanh 10 --set $NAME \
icon=$ICON \
icon.highlight=$SELECTED \
label.width=$WIDTH
