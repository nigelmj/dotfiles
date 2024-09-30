#!/bin/bash

SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"

kaomoji=(
  icon="¯\_(ツ)_/¯"
  icon.padding_left=7
  icon.padding_right=7
  icon.font="$FONT:Bold:14.0"
  icon.color=$DARK_WHITE
  label.drawing=off
  background.corner_radius=8
  background.height=19
  script="$PLUGIN_DIR/kaomoji.sh"
  click_script="$PLUGIN_DIR/play.sh"
)

sketchybar --add event spotify_change $SPOTIFY_EVENT \
  --add item kaomoji center \
  --set kaomoji "${kaomoji[@]}" \
  --subscribe kaomoji spotify_change \
  --subscribe kaomoji mouse.entered mouse.exited
