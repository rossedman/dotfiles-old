#!/bin/sh

brew install python

if test ! $(which pip)
then
  brew install pip
fi

packages=(
'awscli'
'envelopes'
'fabric'
'gitapi'
'requests'
'selenium'
'Jinja2'
)

for packge in ${packages[@]} ; do
  echo "  Installing Python libraries"
  pip install $package
done
