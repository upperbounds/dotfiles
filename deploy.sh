#!/bin/bash

apps="vimrc gitconfig gitignore vim zshrc zsh dircolors.conf python.py tmux.conf"

rm -rf dotfiles-backup
mkdir -p dotfiles-backup

for app in $apps
do
    if [ -e ~/.${f} ]; then
        mv ~/.${app} dotfiles-backup/${app}
    fi
    ln -sf `pwd`/${app} ~/.${app}
done

if [ ! -e ~/.zshrc-local ]; then
    cp zshrc-local ~/.zshrc-local
fi


