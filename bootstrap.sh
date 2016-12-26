#!/bin/bash

if [ ! -f "/usr/local/bin/brew" ]; then
    echo "===> Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [ ! -f "/usr/local/bin/ansible" ]; then 
    echo "===> Install Ansible"
    brew install ansible
fi