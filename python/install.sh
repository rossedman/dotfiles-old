#!/bin/sh

brew install python

if test ! $(which pip)
then
  brew install pip
else
  pip install --upgrade pip
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

for package in ${packages[@]} ; do
  echo "  Installing Python libraries"
  pip install $package
done
