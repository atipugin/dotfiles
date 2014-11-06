#!/bin/bash

if [[ -x /usr/local/bin/brew ]]; then
  brew update
  brew upgrade

  brew tap caskroom/versions
  brew tap thoughtbot/formulae

  declare -a brews=(
    "caskroom/cask/brew-cask"
    "curl"
    "git"
    "grc"
    "imagemagick"
    "mackup"
    "memcached"
    "mongodb"
    "mysql"
    "node"
    "npm"
    "postgresql"
    "pow"
    "rbenv"
    "rcm"
    "redis"
    "ruby-build"
    "sphinx --mysql --pgsql"
    "ssh-copy-id"
    "wget"
    "zsh"
  )

  declare -a casks=(
    "bartender"
    "caffeine"
    "dropbox"
    "evernote"
    "flash"
    "flux"
    "google-chrome"
    "iterm2"
    "mplayerx"
    "onepassword"
    "qlcolorcode"
    "qlmarkdown"
    "qlstephen"
    "sequel-pro"
    "sourcetree"
    "sublime-text3"
    "the-unarchiver"
    "utorrent"
  )

  for name in "${brews[@]}"; do
    brew install $name
  done

  for name in "${casks[@]}"; do
    brew cask install $name
  done

  brew cleanup
fi
