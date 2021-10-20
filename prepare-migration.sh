#!/bin/bash

clear;

brew bundle dump --force;

ls `npm root -g` > Npmfile;

mackup backup --force;
