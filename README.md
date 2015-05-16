# Dotfiles

Your dotfiles are how you personalize your system. These are mine.

All I've ever wanted is a way to provision my whole computer the way I want, when I want.
Dotfiles are the answer.

These are based on Zach Holman's dotfiles you can [read more about his thoughts here](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Install

Run this:

```sh
git clone https://github.com/rossedman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## What's Included?

The main changes I have made from Holman's files are adding more PHP centric
packages and removing some of his extra command line stuff. The extra included
bootstraps are listed below:

- Laravel Homestead
- Laravel Lumen Installer
- Laravel Installer
- Symfony Installer
- NodeJS / NPM
- Global Composer Packages
- Brew Cask (For All Applications)
- Oh My ZSH Integration
- RVM & Ruby Gems
