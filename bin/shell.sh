#/usr/bin/env bash

if [[ ! -d ~/.bash_it ]]
then
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
fi

if [[ ! -d ~/.dotfiles ]]
then
  git clone https://github.com/nathanielks/dotfiles ~/.dotfiles
else
  cd ~/.dotfiles
  git pull
fi
(cd ~/.dotfiles && bin/install-symlinks.sh)
