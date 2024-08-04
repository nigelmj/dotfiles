#!/usr/bin/env sh

source "$HOME/.config/sketchybar/icons.sh"

SSID="$(networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}' | xargs networksetup -getairportnetwork | cut -d ':' -f 2- | xargs)"
CURR_TX="$(wdutil info | grep "Tx Rate" | awk '{print int($4)}')"
POPUP_OFF="sketchybar --set wifi.ssid popup.drawing=off && sketchybar --set wifi.speed popup.drawing=off"
WIFI_INTERFACE=$(networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}')
WIFI_POWER=$(networksetup -getairportpower $WIFI_INTERFACE | awk '{print $4}')

SSID_LOWER=$(echo "$SSID" | tr '[:upper:]' '[:lower:]')

if [ "$WIFI_POWER" == "Off" ]; then
  ICON=$WIFI_OFF

elif [[ "$SSID_LOWER" == *iphone* ]]; then
  ICON=$HOTSPOT

elif [ "$CURR_TX" = 0 ]; then
  ICON=$WIFI_NO_INTERNET

else
  ICON=$WIFI_ICON

fi

sketchybar --set "$NAME" icon=$ICON
