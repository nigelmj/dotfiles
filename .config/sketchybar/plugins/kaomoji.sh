#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

STATE=$(osascript -e 'tell application "Spotify" to player state as string')

if [ "$STATE" = "playing" ]; then
  ICON="(∩^o^)⊃━☆ 􀑪"
  COLOR="$WHITE"
else
  ICON="¯\_(ツ)_/¯"
  COLOR="$DARK_WHITE"
fi


sketchybar --animate tanh 30 --set $NAME icon="$ICON" icon.color="$COLOR"
