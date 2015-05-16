#!/usr/bin/env bash

# Check for apm
if test ! $(which apm)
then
  brew install caskroom/cask/brew-cask
  brew cask install atom
fi

apm install spacegray-dark-ui
apm install base16-ocean-dark
apm install paraiso-dark
apm install base16-syntax
apm install jshint
apm install angularjs
apm install emmet
apm install seti-syntax
apm install seti-ui

exit 0
