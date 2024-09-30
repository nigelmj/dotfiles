#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

STATE=$(osascript -e 'tell application "Spotify" to player state as string')

if [ "$STATE" = "playing" ]; then
  ICON="(∩^o^)⊃━☆"
  COLOR="$WHITE"
else
  ICON="¯\_(ツ)_/¯"
  COLOR="$DARK_WHITE"
fi

if [ $SENDER == "mouse.entered" ]; then
  BG_COLR=$BG_SEC_COLR
elif [ $SENDER == "mouse.exited" ]; then
  BG_COLR=$BG_PRI_COLR
fi

sketchybar --animate tanh 5  --set $NAME background.color=$BG_COLR
sketchybar --animate tanh 30 --set $NAME icon="$ICON" icon.color="$COLOR"
