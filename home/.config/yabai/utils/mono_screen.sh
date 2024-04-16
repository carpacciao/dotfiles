#!/usr/bin/env bash

# Seems to be not working :thinking:
# Delete all spaces above 6
for _ in $(yabai -m query --spaces | jq '.[].index | select(. > 6)'); do
  yabai -m space --destroy 7
done

function setup_space {
  local idx="$1"
  local name="$2"
  local layout="$3"
  local space=
  echo "setup space $idx : $name"

  space=$(yabai -m query --spaces --space "$idx")
  if [ -z "$space" ]; then
    yabai -m space --create
  fi

  yabai -m space "$idx" --label "$name"
  yabai -m config --space "$idx" layout "$layout"
}

# Adding `^` before a space, will take the focus to that window even if it's not the active space
# 1 - shell
setup_space 1 shell bsp
yabai -m rule --add app="^Hyper$" space=^1
yabai -m rule --add app="^kitty$" space=^1
yabai -m rule --add app="^alacritty$" space=^1

# 2 - code
setup_space 2 code stack
yabai -m rule --add app="^Visual Studio Code$" space=^2
yabai -m rule --add app="^Code$" space=^2

# 3 - web
setup_space 3 web stack
yabai -m rule --add app="^Google Chrome$" space=^3

# 4 - chat
setup_space 4 chat stack
yabai -m rule --add app="^Slack$" space=^4

# 5 - tool
setup_space 5 tool stack
yabai -m rule --add app="^Calendrier$" space=^5
yabai -m rule --add app="^GitHub Desktop$" space=^5
yabai -m rule --add app="^KeeWeb$" space=^5

# 6 - media
setup_space 6 media stack
yabai -m rule --add app="^YouTube Music$" space=^6