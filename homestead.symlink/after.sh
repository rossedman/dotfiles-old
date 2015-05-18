#!/bin/sh

# Composer Requirements
# composer global require drush/drush:dev-master
composer global require "laravel/installer=~1.1"
composer global require "laravel/lumen-installer=~1.0"
composer global require "laravel/envoy=~1.0"
composer global require phpspec/phpspec
composer global require phpunit/phpunit
composer global require behat/behat

# Install Symfony Installer
curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
chmod a+x /usr/local/bin/symfony

# Install Gems
sudo gem install bundler
sudo gem install capistrano
sudo gem install jekyll
sudo gem install middleman
sudo gem install guard
sudo gem install guard-sass
sudo gem install sass
sudo gem install bourbon
sudo gem install neat
sudo gem install bitters
