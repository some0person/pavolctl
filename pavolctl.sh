#!/bin/bash

if [ $1 == "m" ]
  then
    exec pactl set-sink-mute @DEFAULT_SINK@ toggle
    exec pactl set-source-mute @DEFAULT_SOURCE@ toggle
elif [ $1 == "inc" ]
  then
    exec pactl set-sink-volume @DEFAULT_SINK@ +2%
elif [ $1 == "dec" ]
  then
    exec pactl set-sink-volume @DEFAULT_SINK@ -2%
fi
