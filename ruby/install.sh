#!/bin/sh

if ! [ "$(type -t rvm)" = "file" ]
then
  echo "  Installing rvm for you."
  \curl -sSL https://get.rvm.io | bash -s stable --ignore-dotfiles > /tmp/rvm-install.log
fi

source ~/.rvm/scripts/rvm

rvm install ruby-2.0.0-p481

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
