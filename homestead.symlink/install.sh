#!/usr/bin/env bash

# Check for Homebrew
if test ! $(which virtualbox)
then
  brew install caskroom/cask/brew-cask
  brew cask install virtualbox
  brew cask install vagrant
fi

vagrant box add laravel/homestead
