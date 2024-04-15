#!/usr/bin/env bash

echo "Started to dotfile your system"

# Configure macos system
source scripts/system.sh

# Install Homebrew formulae
source scripts/brew.sh

# Setup symlink
source link.sh

echo "Everything should be done. Reboot the user session and you good to go."