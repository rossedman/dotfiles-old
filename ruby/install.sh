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
versions=(
'2.1.8'
'2.2.4'
'2.3.0'
)

for version in ${versions[@]}; do
  if [ ! -d "$HOME/src/ruby-$version" ]; then
    echo "  Installing Ruby version $version"
    ruby-install ruby $version
  fi
done

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
thor
erb
)

for gem in ${gems[@]}; do
  if [ ! $(gem list -i $gem) ]; then
    gem install $gem
  fi
done

sudo gem cleanup
