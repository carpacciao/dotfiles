#!/usr/bin/env bash

echo "Started to dotfile your system"

# Configure macos system
source config/scripts/system.sh

# Install Homebrew formulae
source config/scripts/brew.sh

# Setup symlinks
source config/scripts/symlinks.sh

# Update settings
source ~/.zshrc

echo "Everything should be done. Reboot the user session and you good to go."