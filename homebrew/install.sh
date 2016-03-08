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
'homebrew/versions'
'homebrew/homebrew-php'
)

for repo in ${repos[@]} ; do
  brew tap $repo
done

packages=(
'ansible'
'packer'
'terraform'
'wget'
'coreutils'
'zsh'
)

for package in ${packages[@]} ; do
  brew install $package
done

exit 0
