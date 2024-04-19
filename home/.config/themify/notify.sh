#!/bin/bash

# Change Theme

dark_theme="dark.sh"
light_theme="light.sh"

current_theme="$light_theme"
next_theme="$dark_theme"

if [ "$1" = "dark" ]; then
  current_theme="$dark_theme"
  next_theme="$light_theme"
fi

sed -i '' -e "s/$next_theme/$current_theme/g" ~/.config/themify/theme.sh

sketchybar --reload

# Source other apps
source ~/.config/alacritty/sync_theme.sh $1
