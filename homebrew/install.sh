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
'thoughtbot/formulae'
'homebrew/dupes'
'homebrew/apache'
)

for repo in ${repos[@]} ; do
  brew tap $repo
done

brew tap caskroom/versions

packages=(
'wget'
'grc'
'coreutils'
'spark'
'git'
'git-flow'
'git-extras'
'node'
'postgres'
'sqlite'
'php56 --with-apache --with-mysql --with-pgsql --with-intl --with-sqlite'
'php56-mcrypt'
'php56-xdebug'
'zsh'
'gitsh'
'tig'
'ant'
'aspell'
)

for package in ${packages[@]} ; do
  brew install $package
done

exit 0
