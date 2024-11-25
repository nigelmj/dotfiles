#!/bin/bash

source "$HOME/.config/sketchybar/icons.sh"

SSID="$(ipconfig getsummary en0 | awk -F ' SSID : '  '/ SSID : / {print $2}')"
WIFI_INTERFACE=$(networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}')
WIFI_POWER=$(networksetup -getairportpower $WIFI_INTERFACE | awk '{print $4}')

SSID_LOWER=$(echo "$SSID" | tr '[:upper:]' '[:lower:]')

PADDING=2
WIFI_NAME=$SSID
ICON=$WIFI_ICON

if [ "$WIFI_POWER" == "Off" ]; then
  ICON=$WIFI_OFF
  WIFI_NAME=""
  PADDING=-5

elif [[ "$SSID_LOWER" == *iphone* ]]; then
  ICON=$HOTSPOT
  WIFI_NAME=$SSID

elif [ "$SSID" = "" ]; then
  ICON=$WIFI_NO_INTERNET
  WIFI_NAME="Not Connected"

fi

WIFI_NAME=$(echo "$WIFI_NAME" | awk '{print substr($0, 1, 16)}')

sketchybar --animate tanh 20 --set "$NAME" icon=$ICON icon.padding_right=$PADDING \
  --set "$NAME" label="$WIFI_NAME"
