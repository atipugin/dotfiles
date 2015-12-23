# Dotfiles

My little collection of useful dotfiles.

## Requirements

First things first, install [Homebrew](http://brew.sh).

## Install

Clone this repo to your machine:

```shell
git clone git://github.com/atipugin/dotfiles.git ~/.dotfiles
```

Install necessary brews and apps:

```shell
./brew.sh
```

Install dotfiles:

```shell
rcup -d `pwd` -x README.md
```

Configure OSX the right way:

```shell
./osx
```
