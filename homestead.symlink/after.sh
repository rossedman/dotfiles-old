#!/bin/sh

# Composer Requirements
# composer global require drush/drush:dev-master
composer global require "laravel/installer=~1.1"
composer global require "laravel/lumen-installer=~1.0"
composer global require "laravel/envoy=~1.0"
composer global require phpspec/phpspec
composer global require phpunit/phpunit
composer global require behat/behat

# Install Ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby --with-default-gems="rails bundler capistrano guard sass bourbon neat bitters guard-sass jekyll middleman"
