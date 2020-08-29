#!/bin/sh

# vim
mv vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# tmux
mv tmux.conf ~/.tmux.conf

# bash
echo "Go set your PS1 to this:"
cat bashrc
