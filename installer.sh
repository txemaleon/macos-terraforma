#!/bin/bash
sudo -v

# Install HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# Install dotfiles, Terminal config, and Sublime Text Configs
mkdir -p ~/.config/
git clone git@github.com:txemaleon/dotfiles.git ~/.config/dotfiles
mkdir -p ~/Library/Application Support/Sublime Text 3/Packages/User/
git clone git@github.com:txemaleon/Sublime-Text.git ~/Library/Application Support/Sublime Text 3/Packages/User/
ln -s ~/Library/Application Support/Sublime Text 3/Packages/User/ ~/.config/sublime

# Install node tools
npm i -g expo fixpack mversion prettier yarn
