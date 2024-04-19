#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀧞     \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh" \
                          background.border_color=$WARNING_COLOR \
                          icon.color=$ACCENT_COLOR

