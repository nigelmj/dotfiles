#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

zen_on() {
  sketchybar -m --animate tanh 30 \
    --set apple icon="" background.padding_right=0 \
    --set space_separator icon.color="$BG_PRI_COLR" \
    --set front_app icon.color="$BG_PRI_COLR" label.color="$BG_PRI_COLR" \
    --set front_app_separator icon.color="$BG_PRI_COLR" \
    --animate tanh 20 \
    --set cpu icon.color="$BG_PRI_COLR" label.color="$BG_PRI_COLR" \
    --set ram icon.color="$BG_PRI_COLR" label.color="$BG_PRI_COLR" \
    --animate tanh 10 \
    --set kaomoji y_offset=25 \
    --animate tanh 10 \
    --set spotify y_offset=25 \
    --animate tanh 20 \
    --set volume icon.color="$BG_PRI_COLR" label.color="$BG_PRI_COLR" \
    --set wifi icon.color="$BG_PRI_COLR" label.color="$BG_PRI_COLR" \
    --animate tanh 30 \
    --set battery icon.color="$BG_PRI_COLR" label.color="$BG_PRI_COLR"
}

zen_off() {
  sketchybar -m --animate tanh 20 \
    --set apple icon="􀣺" background.padding_right=22 \
    --animate tanh 10 \
    --set space_separator icon.color="$DARK_WHITE" \
    --set front_app icon.color="$SAPPHIRE" label.color="$WHITE" \
    --set front_app_separator icon.color="$DARK_WHITE" \
    --animate tanh 20 \
    --set cpu icon.color="$PEACH" label.color="$WHITE" \
    --set ram icon.color="$MAUVE" label.color="$WHITE" \
    --animate tanh 30 \
    --set kaomoji y_offset=0 \
    --animate tanh 30 \
    --set spotify y_offset=0 \
    --animate tanh 20 \
    --set volume icon.color="$PINK" label.color="$WHITE" \
    --set wifi icon.color="$TEAL" label.color="$WHITE" \
    --animate tanh 10 \
    --set battery icon.color="$GREEN" label.color="$WHITE"
}

if [ "$1" = "on" ]; then
  zen_on
elif [ "$1" = "off" ]; then
  zen_off
else
  if [ "$(sketchybar --query front_app | jq -r ".label.color")" != "$BG_PRI_COLR" ]; then
    zen_on
  else
    zen_off
  fi
fi
