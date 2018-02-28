echo "Finder config..."

# Show Posix Path In Title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES;
killall Finder

#
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool YES;
killall Finder

#
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool YES;
killall Finder

#
defaults write com.apple.finder ShowMountedServersOnDesktop -bool YES;
killall Finder

#
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool YES;
killall Finder

#
defaults write com.apple.finder AppleShowAllFiles YES;
killall Finder



# Hidden apps hidden in dock
defaults write com.apple.Dock showhidden -bool TRUE;
killall Dock

# Kill dock animation
defaults write com.apple.dock autohide-time-modifier -int 0;
killall Dock

# Show recently used apps in dock folder
defaults write com.apple.dock persistent-others -array-add '{"tile-data" = {"list-type" = 1;}; "tile-type" = "recents-tile";}';
killall Dock

exit 0
