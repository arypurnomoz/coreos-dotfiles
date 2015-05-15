#!/bin/bash

set -e

DOTFILES=/home/core/dotfiles

function install() {
  ln -sf $DOTFILES/alias.sh $1/.bash_profile
  ln -sf $DOTFILES/vimrc $1/.vimrc
}

install /home/core
install /root
toolbox yum install -y htop
