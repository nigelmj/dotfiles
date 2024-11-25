#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

if [ $SENDER == "mouse.entered" ]; then
  sketchybar --animate tanh 5  --set $NAME background.color=$BG_SEC_COLR
else
  sketchybar --animate tanh 5  --set $NAME background.color=$BG_PRI_COLR
fi


STATE=$(osascript -e 'tell application "Spotify" to player state as string')

if [ "$STATE" = "playing" ]; then
  ICON="(∩^o^)⊃━☆"
  COLOR="$WHITE"
else
  ICON="¯\_(ツ)_/¯"
  COLOR="$DARK_WHITE"
fi

sketchybar --animate tanh 30 --set $NAME icon="$ICON" icon.color="$COLOR"
