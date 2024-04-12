# https://macos-defaults.com/

# Dock
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "static-only" -bool "true" # show only running app
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "autohide-delay" -float "0.1"
defaults write com.apple.dock "autohide-time-modifier" -float "0.2"

# Mouse
defaults write NSGlobalDomain com.apple.mouse.linear -bool "true"
defaults write -g com.apple.swipescrolldirection -bool false

# Disable ^space, switch keyboard
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 60 '<dict><key>enabled</key><false/></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 62 '<dict><key>enabled</key><false/></dict>'

# Disable spotlight shortcut
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 '<dict><key>enabled</key><false/></dict>'