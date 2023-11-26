#!/usr/bin/env zsh

STOW_FOLDERS="gitconfig,tmux,vim,zsh"

DOT_FILES=$HOME/.dotfiles

pushd $DOT_FILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    stow -D $folder
    stow $folder
done
popd