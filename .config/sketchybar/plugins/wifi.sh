#!/usr/bin/env sh

source "$HOME/.config/sketchybar/icons.sh"

SSID="$(networksetup -getairportnetwork en0 | awk -F ': ' '{print $2}')"
CURR_TX="$(wdutil info | grep "Tx Rate" | awk '{print int($4)}')"
POPUP_OFF="sketchybar --set wifi.ssid popup.drawing=off && sketchybar --set wifi.speed popup.drawing=off"
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

sketchybar --set "$NAME" icon=$ICON icon.padding_right=$PADDING \
            --set "$NAME" label="$WIFI_NAME"
