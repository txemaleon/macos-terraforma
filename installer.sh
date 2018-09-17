#!/bin/bash

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# Install dotfiles, Terminal config, and Sublime Text Configs
mkdir -p ~/.config/
git clone git@github.com:txemaleon/dotfiles.git ~/.config/dotfiles
for f in bash_profile fixpackrc gitconfig inputrc npmrc slate tmux.conf vimrc; do rm -rf ~/.$f; ln -s ~/.config/dotfiles/$f ~/.$f; done

# Vim Config
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Sublime Text Config
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
git clone git@github.com:txemaleon/Sublime-Text.git ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -s ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/ ~/.config/sublime

# Install node tools
npm i -g expo fixpack mversion eslint prettier yarn

# Configure macos
. ./macos.sh
