#!/bin/bash

##### Adding Left Items #####
# We add some regular items to the left side of the bar, where
# only the properties deviating from the current defaults need to be set

sketchybar --add item front_app left \
           --set front_app script="$PLUGIN_DIR/front_app.sh" icon=􀆊 icon.color=$DANGER_COLOR \
           --subscribe front_app front_app_switched
           