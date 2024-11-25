#!/bin/bash

update ()
{
  PLAYING=$(osascript -e 'tell application "Spotify" to player state as string')

  if [ $PLAYING = "playing" ]; then
    TRACK=$(osascript -e 'tell application "Spotify" to name of current track as string')
    ARTIST=$(osascript -e 'tell application "Spotify" to artist of current track as string')
    ALBUM=$(osascript -e 'tell application "Spotify" to album of current track as string')

    if [ "$ARTIST" == "" ]; then
      ICON="􀊱"
      LABEL="$TRACK - $ALBUM"
    else
      ICON="􀑪"
      LABEL="$TRACK - $ARTIST"
    fi
  else
    LABEL=""
  fi

  sketchybar --animate tanh 30 --set $NAME icon="$ICON" label="$LABEL"
}

case "$SENDER" in
  *) update
  ;;
esac
