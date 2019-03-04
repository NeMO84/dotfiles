#!/bin/bash

which "zsh"
retVal=$?
if [ $retVal -ne 0 ]; then
    echo "Need to install zsh first"
    exit 1
else
	echo "Zshell already installed"
fi

if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is already installed"
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

zshrc=~/.zshrc
if [ -f $zshrc ]; then
	echo "$zshrc is already installed"
else
	echo "Installing zshrc file: $zshrc"
	cp .zshrc $zshrc
fi

theme=~/.oh-my-zsh/custom/themes/nemonster.zsh-theme
if [ -f $theme ]; then
	echo "$theme is already installed"
else
	echo "Installing custom oh-my-zsh theme: $theme"
	mkdir -p ~/.oh-my-zsh/custom/themes
	cp nemonster.zsh-theme $theme
fi
