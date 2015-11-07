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
'phpunit/phpunit=*'
'phpspec/phpspec=*'
'behat/behat=*'
'squizlabs/php_codesniffer=*'
'phpdocumentor/phpdocumentor=2.*'
'laravel/installer=~1.1'
'laravel/lumen-installer=~1.0'
'laravel/homestead=~2.0'
'laravel/envoy=~1.0'
'kherge/box=*'
)

for package in ${packages[@]} ; do
  $HOME/.dotfiles/bin/composer global require $package
done
