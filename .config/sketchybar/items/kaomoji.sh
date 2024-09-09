#!/bin/bash

SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"

kaomoji=(
  icon="¯\_(ツ)_/¯"
  icon.font="$FONT:ExtraBold:14.0"
  icon.color=$DARK_WHITE
  label.drawing=off
  script="$PLUGIN_DIR/kaomoji.sh"
)

sketchybar --add event spotify_change $SPOTIFY_EVENT \
  --add item kaomoji center \
  --set kaomoji "${kaomoji[@]}" \
  --subscribe kaomoji spotify_change
