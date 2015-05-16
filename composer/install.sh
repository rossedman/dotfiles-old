#!/usr/bin/env bash

# Check for composer
if test ! $(which composer)
then
	curl -sS https://getcomposer.org/installer | php -- --install-dir=$HOME/.dotfiles/bin
	mv $HOME/.dotfiles/bin/composer.phar $HOME/.dotfiles/bin/composer
fi

## Update composer
$HOME/.dotfiles/bin/composer self-update

packages=(
'phpunit/phpunit=3.7.*'
'phpspec/phpspec=*'
'behat/behat=*'
'squizlabs/php_codesniffer=*'
'phpdocumentor/phpdocumentor=2.*'
'laravel/installer=~1.1',
'laravel/homestead=~2.0'
)

for package in ${packages[@]} ; do
  $HOME/.dotfiles/bin/composer global require $package
done
