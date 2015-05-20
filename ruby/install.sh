#!/bin/sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install ruby-install
brew install chruby

ruby-install ruby 1.9
ruby-install ruby 2.1
ruby-install ruby 2.2.1

gems=(
bundler
compass
bourbon
neat
bitters
foundation
guard
guard-sass
jekyll
middleman
capistrano
github-pages
rails
travis
)

sudo gem install ${gems[@]}
sudo gem cleanup
