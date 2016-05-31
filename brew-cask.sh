#!/bin/bash

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew cask packages..."


# cask maintainace
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Apps I use often
brew cask install spectacle
brew cask install dropbox
brew cask install gyazo
brew cask install 1password
brew cask install rescuetime
brew cask install flux
brew cask install alfred
brew cask install steam
brew cask install transmission
brew cask install vlc
brew cask install spotify
brew cask install geektool

# dev
brew cask install iterm2
brew cask install sublime-text
brew cask install integrity
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
brew cask install textadept
brew cask install imagealpha
brew cask install imageoptim
brew cask install java

# Firewall
brew cask install little-snitch

## dev - make searching in Vim easier.
brew install ack
brew install the_silver_searcher


# fun
brew cask install limechat
brew cask install miro-video-converter
brew cask install horndis # usb tethering for Android

# browsers
brew cask install google-chrome
brew cask install firefoxnightly
brew cask install webkit-nightly
brew cask install chromium
brew cask install torbrowser

# less often
brew cask install disk-inventory-x
brew cask install screenflow
brew cask install gpgtools
brew cask install licecap
brew cask install utorrent

exit 0

