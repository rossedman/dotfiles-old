#!/bin/sh

phplibs=(
'php70'
'php70-mcrypt'
'php70-xdebug'
)

for lib in ${phplibs[@]} ; do
  echo "  Installing PHP libraries"
  brew install $lib
done
