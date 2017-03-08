#!/bin/bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew packages
brew install $(cat brew-packages)

# Instal reqired brew cask packages
brew tap caskroom/cask
brew cask install $(cat brew-cask-packages)

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Backup original .zshrc 
cp ~/.zshrc ~/.zshrc.orig

# *** Custom ZSH Configuration *** #
# theme
sed -i "s/^ZSH_THEME=.*/ZSH_THEME="yc"/" ~/.zshrc

# plugins
sed -i "s/^plugins=(git.*/plugins=(git osx vagrant docker)/" ~/.zshrc
# ******************************* #

echo
echo "DONE!!"
echo
