#!/bin/sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install ruby managers
brew install ruby-install
brew install chruby

# Install versions of ruby
ruby-install ruby 1.9
ruby-install ruby 2.1
ruby-install ruby 2.2.1

# Gems for development
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
rake
json
simple-rss
colorize
open-uri
httparty
t
)

sudo gem install ${gems[@]}
sudo gem cleanup
