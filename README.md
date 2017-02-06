# Dotfiles

My little collection of useful dotfiles.

## Requirements

- [Homebrew](http://brew.sh)
- [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle)

## Install

Clone this repo to your machine:

```shell
git clone git://github.com/atipugin/dotfiles.git ~/.dotfiles
```

Install necessary brews and apps:

```shell
brew bundle
```

Install dotfiles:

```shell
rcup -d `pwd` -x README.md -x Brewfile -x osx
```

Configure OSX the right way:

```shell
./osx
```
