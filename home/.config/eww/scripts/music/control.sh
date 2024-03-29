#!/bin/bash

if [[ $1 == "prev" ]]; then
  playerctl previous
fi

if [[ $1 == "backward" ]]; then
  playerctl position $(echo $(playerctl position) - 10 | bc)
fi

if [[ $1 == "play-pause" ]]; then
  playerctl play-pause
fi

if [[ $1 == "forward" ]]; then
  playerctl position $(echo $(playerctl position) + 10 | bc)
fi

if [[ $1 == "next" ]]; then
  playerctl next
fi
