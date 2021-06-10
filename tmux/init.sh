#!/bin/bash

which "tmux"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Need to install tmux first"
  exit 1
else
  echo "Tmux already installed"
fi

tmuxconf=~/.tmux.conf
if [ -f $tmuxconf ]; then
  echo "$tmuxconf already exists"
else
  echo "Installing tmux config file: $tmuxconf"
  cp -i tmux/.tmux.conf $tmuxconf
fi

tmuxtpm=~/.tmux/plugins/tpm
if [ -d $tmuxtpm ]; then
  echo "Updating tmux-plugins/tmux"
  git -C $tmuxtpm pull
else
  echo "Installing tmux-plugins/tmux -> ~/.tmux/plugins/tpm"
  mkdir -p ~/.tmux/plugins
  git clone https://github.com/tmux-plugins/tpm $tmuxtpm
fi
