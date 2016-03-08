#!/usr/bin/env bash

# Install Go
if test ! $(which go)
then
  echo "  Installing Go!"
  brew install go
fi

# Setup the GOPATH
if [ ! -d "$GOPATH/bin" ]; then
  echo "  Setting up \$GOPATH"
  mkdir -p $GOPATH
fi

brews=(
'glide'
)

for brew in ${brew[@]} ; do
  echo "  Installing GO packes"
  brew install $brew
done

packages=(
'github.com/vmware/govmomi/govc'
'github.com/gin-gonic/gin'
'github.com/micro/micro'
)

for package in ${packages[@]} ; do
  go get $package
done
