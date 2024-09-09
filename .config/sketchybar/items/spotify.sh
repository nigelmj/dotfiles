#!/bin/bash

SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"

spotify=(
  icon.padding_left=0
  icon.padding_right=0
  label.max_chars=25
  label.padding_left=0
  label.padding_right=0
  scroll_texts=on
  updates=on
  script="$PLUGIN_DIR/spotify.sh"
)

sketchybar --add event spotify_change $SPOTIFY_EVENT \
  --add item spotify center \
  --set spotify "${spotify[@]}" \
  --subscribe spotify spotify_change
