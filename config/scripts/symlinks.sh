#!/usr/bin/env bash

excluded_folder="config"

for d in */; do
    # Check if the current folder should be excluded
    if [[ "$d" != "$excluded_folder/" ]]; then
        ( stow --restow "$d" )
    fi
done
