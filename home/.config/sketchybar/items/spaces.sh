#!/bin/bash

##### Adding Mission Control Space Indicators #####
# Let's add some mission control spaces:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item
# to indicate active and available mission control spaces.

SPACE_ICONS=("1" "2" "3" "A" "Z" "E" "7" "8" "9" "10")
for i in "${!SPACE_ICONS[@]}"
do
  sid="$(($i+1))"
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=14
    icon.padding_right=14
    background.color=$INFO_COLOR
    background.border_width=0
    icon.color=$FONT_COLOR
    icon.highlight_color=$BACKGROUND_COLOR
    icon.font="Cascadia Code:Bold:14.0"
    background.corner_radius=5
    background.height=18
    label.drawing=off
    script="$PLUGIN_DIR/space.sh"
    click_script="yabai -m space --focus $sid"
  )
  sketchybar --add space space."$sid" left --set space."$sid" "${space[@]}"
done

sketchybar --add bracket spaces '/space\..*/'               \
           --set         spaces background.color=$BACKGROUND_COLOR \
                                background.corner_radius=8  \
                                background.height=28 \
                                padding_left=20 \
                                padding_right=20
