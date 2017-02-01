#!/bin/bash

if [[ -x /usr/local/bin/brew ]]; then
  brew update
  brew upgrade

  brew tap caskroom/cask
  brew tap caskroom/versions
  brew tap caskroom/fonts
  brew tap thoughtbot/formulae

  declare -a brews=(
    "ansible"
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
    "docker"
    "dropbox"
    "flux"
    "font-hack"
    "google-chrome"
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
    "telegram-desktop"
    "the-unarchiver"
    "transmission"
    "vagrant"
    "vagrant-manager"
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
