#!/bin/bash

if [[ -x /usr/local/bin/brew ]]; then
  brew update
  brew upgrade

  brew tap caskroom/versions
  brew tap thoughtbot/formulae
  brew tap homebrew/dupes
  brew tap homebrew/versions
  brew tap homebrew/homebrew-php

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
    "nginx"
    "node"
    "npm"
    "php56 --with-fpm"
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
    "zsh-completions"
    "zsh-syntax-highlighting"
  )

  declare -a casks=(
    "bartender"
    "caffeine"
    "dropbox"
    "flash"
    "flux"
    "instacast"
    "iterm2"
    "mac2imgur"
    "mplayerx"
    "navicat-for-postgresql"
    "punto-switcher"
    "qlcolorcode"
    "qlmarkdown"
    "qlstephen"
    "sequel-pro"
    "slack"
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
