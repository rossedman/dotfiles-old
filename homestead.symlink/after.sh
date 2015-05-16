#!/bin/sh

# Composer Requirements
# composer global require drush/drush:dev-master
composer global require "laravel/installer=~1.1"
composer global require phpspec/phpspec
composer global require phpunit/phpunit
composer global require behat/behat

# Install Symfony Installer
curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
chmod a+x /usr/local/bin/symfony

# Install Gems
gem install bundler
gem install capistrano
gem install guard
gem install sass
gem install bourbon
gem install neat
gem install bitters
