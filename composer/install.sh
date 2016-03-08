#!/usr/bin/env bash

# Check for composer
if test ! $(which composer)
then
	curl -sS https://getcomposer.org/installer | php -- --install-dir=$HOME/.dotfiles/bin
	mv $HOME/.dotfiles/bin/composer.phar $HOME/.dotfiles/bin/composer
fi

# Update composer
$HOME/.dotfiles/bin/composer self-update
