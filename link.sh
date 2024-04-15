#!/usr/bin/env bash

# Setup symlinks
# source config/scripts/symlinks.sh
stow --restow home

# Update settings
source ~/.zshrc
