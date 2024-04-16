#!/usr/bin/env bash

dark_theme="dark.toml"
light_theme="light.toml"

current_theme="$light_theme"
next_theme="$dark_theme"

if [ "$1" = "dark" ]; then
  current_theme="$dark_theme"
  next_theme="$light_theme"
fi

sed -i '' -e "s/$next_theme/$current_theme/g" ~/.config/alacritty/alacritty.toml