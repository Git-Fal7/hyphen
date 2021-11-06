#!/bin/sh

[ "$1" = 'up' ] && amixer -D pulse sset Master 5%+
[ "$1" = 'down' ] && amixer -D pulse sset Master 5%-
[ "$1" = 'mute' ] && amixer -D pulse sset Master toggle

paplay sounds/bell.ogg &

display_volume="$(amixer -D pulse sget Master | grep % | grep Left | awk '{print $5}'| cut -d "[" -f 2 | cut -d "]" -f 1 | cut -d "%" -f 1)"

amixer -D pulse get Master | grep -q '\[off\]' && display_volume=0

if [ "$icon_name" = "" ]; then
    if [ "$display_volume" = "0" ]; then
        icon_name="audio-volume-muted"
    else
        if [ "$display_volume" -lt "33" ]; then
            icon_name="audio-volume-low"
        else
            if [ "$display_volume" -lt "67" ]; then
                icon_name="audio-volume-medium"
            else
                icon_name="audio-volume-high"
            fi
        fi
    fi
fi

notify-send " " -i "$icon_name" \
  -h int:value:"$(amixer -D pulse sget Master | grep % | grep Left | awk '{print $5}'| cut -d "[" -f 2 | cut -d "]" -f 1 | cut -d "%" -f 1)" \
  -h string:synchronous:volume
