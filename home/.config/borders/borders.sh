#!/bin/bash

options=(
	style=round
	width=6.0
	hidpi=off
	active_color=$ACTIVE_BORDER_COLOR
	inactive_color=$INACTIVE_BORDER_COLOR
)

borders "${options[@]}"
