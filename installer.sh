#!/bin/bash

sudo -v

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
npm i -g expo fixpack mversion prettier yarn
