#!/bin/bash

source ~/.config/themify/theme.sh

default=(
  padding_left=5
  padding_right=5
  icon.font="SF Pro:Semibold:14.0"
  label.font="Cascadia Code:Bold:14.0"
  background.color=$BACKGROUND_COLOR
  background.border_color=$ACTIVE_BORDER_COLOR
  background.border_width=2
  background.corner_radius=8
  icon.color=$INFO_COLOR
  label.color=$FONT_COLOR
  icon.padding_left=8
  icon.padding_right=8
  label.padding_left=8
  label.padding_right=8
)
sketchybar --default "${default[@]}"