#!/bin/bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew packages
brew install $(cat brew-packages)

# Instal reqired brew cask packages
brew tap caskroom/cask
brew cask install $(cat brew-cask-packages)

echo
echo "DONE!!"
echo
