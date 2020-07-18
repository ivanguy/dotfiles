#!/bin/bash

dotfiles=$HOME/dotfiles
backup=$HOME/dotfiles.bak

mkdir -p $backup

mv $HOME/.config/i3 $backup/i3
ln -sv $dotfiles/i3 $HOME/.config/i3
mv $HOME/.gitconfig $backup/gitconfig
ln -sv $dotfiles/git/gitconfig $HOME/.gitconfig


files=(vim bashrc tmux.conf)
for fpath in ${files[@]}
do
    mv $HOME/.$fpath $backup/$fpath
    ln -sv $dotfiles/$fpath $HOME/.$fpath
done
