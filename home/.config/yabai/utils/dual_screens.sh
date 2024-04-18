#!/usr/bin/env bash

# For dual screens, I use 6 spaces.
# 3 on the main screen and 3 on the second one:
# - main screen goes like: shell, code, web.
# - second screen goest like: chat, tool, media.
# 
# shell: terminals
# code: code editor
# web: web browser
# chat: chat app
# tool: tool for commits, password manager, calendar, ...
# media: music

# Function to setup spaces
# $1 - $idx -> ID{number} of the space
# $2 - $name -> name of this space
# $3 - $layout -> Layout to adopt for this space
# $4 - $display -> On which display the space is for
function setup_space {
  local idx="$1"
  local name="$2"
  local layout="$3"
  local display="$4"
  local space=

  space=$(yabai -m query --spaces --space "$idx")

  if [ -z "$space" ]; then
    yabai -m space --create "$display"
  fi

  yabai -m space "$idx" --label "$name"
  yabai -m space "$idx" --display "$display"
  yabai -m config --space "$idx" layout "$layout"
}

# Delete all spaces above 6
for _ in $(yabai -m query --spaces | jq '.[].index | select(. > 6)'); do
  yabai -m space --destroy 7
done

#------------------------------
# Setup spaces

# 1 - shell
setup_space 1 shell bsp 1
yabai -m rule --add app="^alacritty$" space=^1
yabai -m rule --add app="^Alacritty$" space=^1

# 2 - code
setup_space 2 code stack 1
yabai -m rule --add app="^Visual Studio Code$" space=^2
yabai -m rule --add app="^Code$" space=^2
yabai -m rule --add app="^Xcode$" space=^2

# 3 - web
setup_space 3 web stack 1
yabai -m rule --add app="^Google Chrome$" space=^3

# 4 - chat
setup_space 4 chat stack 2
yabai -m rule --add app="^Slack$" space=^4
yabai -m rule --add app="^Discord$" space=^4

# 5 - tool
setup_space 5 tool stack 2
yabai -m rule --add app="^Calendrier$" space=^5
yabai -m rule --add app="^GitHub Desktop$" space=^5
yabai -m rule --add app="^KeeWeb$" space=^5

# 6 - media
setup_space 6 media stack 2
yabai -m rule --add app="^YouTube Music$" space=^6