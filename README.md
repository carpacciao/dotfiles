# dotfiles

lvd's dotfiles. Made for osx, apple ship.

It contains:
- custom keyboard layout (belgian)
- macos defaults
- alacritty
- wallpapers
- vscode
- bunch of brew apps
- some themes adapted to my colorblindness

## Setup

Install [homebrew](https://brew.sh/). Do not forget to setup the homebrew path into the zprofile.

> I had a problem installing apps from homebrew, add this to your zprofile
>
> `export HOMEBREW_CASK_OPTS=--no-quarantine`

Homebrew should install git from xcode.

Install rosetta for compatibility:
```
softwareupdate --install-rosetta
```

## Post installation

see [post installation](./post_installation.md).
