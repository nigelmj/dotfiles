#!/bin/bash

source "$HOME/.config/sketchybar/icons.sh"

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [[ $MUTED != "false" ]]; then
    ICON="$VOLUME_MUT_ICON"
    VOLUME=0
else
    case ${VOLUME} in
        [6-9][0-9]|100) ICON="$VOLUME_HIG_ICON" ;;  # Matches 66-99 and 100
        [3-6][0-9]|65) ICON="$VOLUME_MID_ICON" ;;  # Matches 33-66
        [1-2][0-9]|[1-9]|3[0-2]) ICON="$VOLUME_LOW_ICON" ;;  # Matches 1-32
        0) ICON="$VOLUME_MUT_ICON" ;;  # Matches 0
    esac
fi

sketchybar -m --animate tanh 10 \
  --set $NAME icon=$ICON \
  --set $NAME label="$VOLUME%"
