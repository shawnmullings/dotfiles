#!/bin/bash

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

# Brew maintainace
brew update && brew cleanup

brew install node

## Makes adding SSH keys to servers easier.
brew install ssh-copy-id

brew install docker boot2docker
brew install boot2docker

brew install gcc
brew install git
brew install gpg
brew install openssh
brew install pandoc
brew install sqlite
brew install tmux

# cli tools
brew install ack
brew install tree
brew install wget

brew install zsh

exit 0
