#!/bin/bash

if [[ -x /usr/local/bin/brew ]]; then
  brew update
  brew upgrade

  brew tap caskroom/versions
  brew tap caskroom/fonts
  brew tap thoughtbot/formulae
  brew tap homebrew/dupes
  brew tap homebrew/versions
  brew tap homebrew/homebrew-php

  declare -a brews=(
    "caskroom/cask/brew-cask"
    "curl"
    "docker"
    "docker-compose"
    "docker-machine"
    "elasticsearch"
    "git"
    "go"
    "grc"
    "imagemagick"
    "mackup"
    "memcached"
    "mongodb"
    "mysql"
    "nginx"
    "node"
    "npm"
    "php56 --with-fpm --with-config-file-scan-dir=/usr/local/etc/php/5.6/conf.d"
    "postgresql"
    "pow"
    "python"
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
    "caffeine"
    "colloquy"
    "dropbox"
    "flash"
    "flux"
    "font-hack"
    "iterm2"
    "java"
    "mac2imgur"
    "mplayerx"
    "navicat-for-postgresql"
    "numi"
    "qlcolorcode"
    "qlmarkdown"
    "qlstephen"
    "sequel-pro"
    "skype"
    "slack"
    "slate"
    "sourcetree"
    "sublime-text3"
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
