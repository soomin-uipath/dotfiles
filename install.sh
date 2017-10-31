#!/bin/bash

OSNAME="$(uname)"
echo "Running script on ${OSNAME}..."

if [[ "${OSNAME}" == "Darwin" ]]; then
  ln -s ~/dotfiles/.zshrc ~/.zshrc
  ln -s ~/dotfiles/.vimrc ~/.vimrc
  ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
  ln -s ~/dotfiles/.gitconfig ~/.gitconfig

  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  brew update
  brew upgrade

  brew install vim tmux zsh antibody

  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  echo "COMPLETED ALL"
fi
