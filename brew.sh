#!/bin/bash

if [[ -x /usr/local/bin/brew ]]; then
  brew update
  brew upgrade

  brew tap caskroom/cask
  brew tap caskroom/versions
  brew tap caskroom/fonts
  brew tap thoughtbot/formulae

  declare -a brews=(
    "curl"
    "git"
    "go"
    "grc"
    "mackup"
    "node"
    "openssl"
    "python"
    "rbenv"
    "rcm"
    "ruby-build"
    "ssh-copy-id"
    "wget"
    "zsh"
    "zsh-completions"
    "zsh-syntax-highlighting"
  )

  declare -a casks=(
    "bartender"
    "caffeine"
    "cloud"
    "dropbox"
    "flash"
    "flux"
    "font-hack"
    "google-drive"
    "iterm2"
    "java"
    "mplayerx"
    "numi"
    "qlcolorcode"
    "qlimagesize"
    "qlmarkdown"
    "qlstephen"
    "skype"
    "slack"
    "slate"
    "sourcetree"
    "sublime-text"
    "telegram"
    "the-unarchiver"
    "transmission"
    "tunnelbear"
    "vagrant"
    "virtualbox"
  )

  for name in "${brews[@]}"; do
    brew install $name
  done

  for name in "${casks[@]}"; do
    brew cask install $name
  done

  brew link curl --force

  brew cleanup
fi
