#!/bin/bash

source "$HOME/.config/sketchybar/icons.sh"

ICON=$GHOST
if [ "$SELECTED" = "true" ]; then
  ICON=$PACMAN
fi

sketchybar --animate tanh 10 --set $NAME \
icon=$ICON \
icon.highlight=$SELECTED
