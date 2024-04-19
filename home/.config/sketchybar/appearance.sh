#!/bin/bash

source ~/.config/themify/theme.sh

appearance=(
  position=top
  height=30
  blur_radius=30
  color=$TRANSPARENT_COLOR
  border_color=$ACTIVE_BORDER_COLOR
  border_width=0
  corner_radius=8
  margin=10
  y_offset=6
  padding_left=0
  padding_right=0
)

sketchybar --bar "${appearance[@]}"
