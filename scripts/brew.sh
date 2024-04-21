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
brew tap FelixKratz/formulae

# Install binaries
brew install stow
brew install neofetch
brew install jq
brew install zsh-autosuggestions
brew install cormacrelf/tap/dark-notify
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
brew install borders
brew install sketchybar
brew install mas
brew install ffmpeg
brew install gifsicle
brew install bat

# Install code related packager, languages,...
brew install go
brew install nvm

# Fonts
brew install font-cascadia-code
brew install font-sf-pro
brew install --cask font-hack-nerd-font

# Install casks
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask discord
brew install --cask ukelele
brew install --cask github
brew install --cask raycast
brew install --cask alacritty
brew install --cask keeweb
brew install --cask superlist
brew install --cask figma
brew install --cask sf-symbols
brew install --cask licecap

# Apple store apps
mas install 497799835 # Xcode

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove outdated versions from the cellar
brew cleanup
