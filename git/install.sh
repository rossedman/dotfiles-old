#!/bin/sh

packages=(
'git'
'git-flow'
'git-extras'
'gitsh'
)

for package in ${packages[@]} ; do
  echo "  Installing git packages."
  brew install $package
done
