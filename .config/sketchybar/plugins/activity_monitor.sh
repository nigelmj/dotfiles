#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

BG_COLR=$BG_PRI_COLR

if [ $SENDER == "mouse.entered" ]; then
  BG_COLR=$BG_SEC_COLR
elif [ $SENDER == "mouse.exited" ]; then
  BG_COLR=$BG_PRI_COLR
fi

sketchybar --animate tanh 5 --set $NAME background.color=$BG_COLR
