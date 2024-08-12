#!/bin/sh

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --animate tanh 20 --set $NAME label="$INFO" icon="$($CONFIG_DIR/plugins/icon_map_fn.sh "$INFO")"
fi
