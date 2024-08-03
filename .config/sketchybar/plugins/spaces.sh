#!/bin/bash

WIDTH="dynamic"
if [ "$SELECTED" = "true" ]; then
  WIDTH="0"
fi

sketchybar --animate tanh 20 --set $NAME \
icon.highlight=$SELECTED \
background.shadow.color=$SELECTED \
label.width=$WIDTH
