#!/bin/bash

OSNAME="$(uname)"
if [[ "${OSNAME}" == "Darwin" ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  brew update
  brew upgrade

  brew install vim tmux zsh antibody

  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  echo "COMPLETED ALL"
fi
