#!/usr/bin/env bash

# Check for node
if test ! $(which node)
then
  echo "  Installing Node for you."
  brew install node
fi

# Check for NPM
if test ! $(which npm)
then
  echo "  Installing NPM for you."
  brew install npm
fi

npm --prefix $HOME/.dotfiles/npm install $HOME/.dotfiles/npm
