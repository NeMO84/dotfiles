#!/bin/bash

which "nvim"
retVal=$?
if [ $retVal -ne 0 ]; then
    echo "Need to install neovim first"
    exit 1
else
	echo "NeoVim already installed"
fi

nviminit=~/.config/nvim/init.vim
if [ -f $nviminit ]; then
	echo "$nviminit already exists"
else
	echo "Installing nvim.init file: $nviminit"
	mkdir -p ~/.config/nvim
	cp -i neovim/.nvimrc $nviminit
fi

autoload_plug=~/.local/share/nvim/site/autoload/plug.vim
if [ -f $autoload_plug ]; then
  echo "Plug already installed"
else
  curl -fLo $autoload_plug --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
