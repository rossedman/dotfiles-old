#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

repos=(
'josegonzalez/homebrew-php'
'thoughtbot/formulae'
)

for repo in ${repos[@]} ; do
  brew tap $repo
done

packages=(
'caskroom/cask/brew-cask'
'grc'
'coreutils'
'spark'
'git'
'git-flow'
'git-extras'
'node'
'php55'
'php55-mcrypt'
'zsh'
'gitsh'
'tig'
)

for package in ${packages[@]} ; do
  brew install $package
done

programs=(
'virtualbox'
'vagrant'
'atom'
'phpstorm'
'rubymine'
'sublime-text3'
'github'
'tower'
'sourcetree'
'sequel-pro'
'psequel'
'sqlprosqlite'
'google-chrome'
'heroku-toolbelt'
'kaleidoscope'
'the-unarchiver'
'caffeine'
'iterm2'
'spotify'
'kindle'
'sketch'
'sketch-toolbox'
'omnifocus'
'omnigraffle'
'terraform'
)

for program in ${programs[@]} ; do
  brew cask install $program
done

brew cask cleanup

exit 0
