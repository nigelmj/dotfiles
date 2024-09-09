#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

LABEL=$(date '+%a %d %B %H:%M')
BG_COLR=$BG_PRI_COLR

if [ $SENDER == "mouse.entered" ]; then
  BG_COLR=$BG_SEC_COLR
else
  BG_COLR=$BG_PRI_COLR
fi

sketchybar --animate tanh 5 --set $NAME label="$LABEL" background.color=$BG_COLR
