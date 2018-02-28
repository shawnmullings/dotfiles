#!/bin/bash

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew cask packages..."

# Cask maintainace
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Apps I use often
# Brew cask install spectacle
brew cask install dropbox
brew cask install alfred
#brew cask install steam
brew cask install transmission
brew cask install vlc
brew cask install spotify
brew cask install geektool
brew cask install atom

# Dev
brew cask install iterm2
brew cask install sublime-text
brew cask install virtualbox
#brew cask install vagrant
#brew cask install vagrant-manager
brew cask install imagealpha
brew cask install imageoptim
#brew cask install java
brew cask install dash


# Container life
brew cask install virtualbox
brew cask install docker
brew cask install kitematic
brew cask install minikube

# Google Slavery
echo Install Google Apps
brew cask install google-chrome
brew cask install google-backup-and-sync
brew cask install google-music-manager
#brew cask install google-earth

# Fun
brew cask install spotify
brew cask install vlc

# Messaging and Teams
brew cask install slack
brew cask install teamviewer

# Browsers
brew cask install firefoxnightly
#brew cask install webkit-nightly
#brew cask install chromium
brew cask install torbrowser

# Less often
brew cask install disk-inventory-x
brew cask install gpg-suite
brew cask install utorrent

# Cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

exit 0
