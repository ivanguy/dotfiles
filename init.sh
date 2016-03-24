#!/bin/bash

dir=$HOME/dotfiles
backup=$HOME/dotfiles.bak

mkdir -p $backup

mv $HOME/.gitconfig $backup/.gitconfig   
mv $HOME/.gitignore_global $backup/.gitignore_global 
mv $HOME/.vim $backup/.vim 
mv $HOME/.bashrc $backup/.bashrc 
mv $HOME/.zshrc $backup/.zshrc 
#for file in $dir/*
#do
  #filename=$(basename $file)
  #echo $file
  #if [[ "$filename" != "$(basename $0)" ]]; then
    #echo "Creating link for .$filename"
    ## Move existing dotfile to $backup
    #mv $HOME/.$filename $backup/
    ## Create symlink
    #ln -sv $dir/$filename $HOME/.$filename
  #fi
#done
ln -sv $dir/git/gitconfig $HOME/.gitconfig
ln -sv $dir/git/gitignore_global $HOME/.gitignore_global
ln -sv $dir/vim $HOME/.vim
ln -sv $dir/bashrc $HOME/.bashrc
ln -sv $dir/zshrc $HOME/.zshrc
