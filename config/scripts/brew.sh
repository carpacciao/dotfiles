#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update and upgrade already-installed formulae
brew update
brew upgrade

# Add taps
brew tap homebrew/cask-fonts

# Install binaries
brew install stow
brew install zsh-autosuggestions

# Fonts
brew install font-cascadia-code

# Install casks
brew install --cask vscodium
brew install --cask google-chrome
brew install --cask discord
brew install --cask ukelele
brew install --cask github
brew install --cask raycast
brew install --cask alacritty

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove outdated versions from the cellar
brew cleanup
