#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install other useful binaries.
brew install node
brew install zsh
brew install vim --override-system-vi

# Remove outdated versions from the cellar.
brew cleanup

# Tap Caskroom
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts

brew cask install github
brew cask install tower
brew cask install sourcetree
brew cask install coda
brew cask install phpstorm
brew cask install rubymine
brew cask install sequel-pro
brew cask install google-chrome
brew cask install heroku-toolbelt
brew cask install kaleidoscope
brew cask install the-unarchiver
brew cask install caffeine
brew cask install iterm2
brew cask install spotify
brew cask install kindle
brew cask install sketch
brew cask install sketch-toolbox
brew cask install omnigraffle
brew cask install omnifocus

brew cask cleanup
