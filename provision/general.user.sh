#!/bin/bash

# this script run as vagrant user and running
# on all machines

echo "general.user: running..."

echo "general.user: export required env variable"
export HOME=/home/vagrant

echo "general.user: clone the dotfiles"
rm -rf $HOME/.dotfiles
git clone https://github.com/pyk/dotfiles.git $HOME/.dotfiles

echo "general.user: symlink required dotfiles to $HOME"
ln -sf $HOME/.dotfiles/bash/.bashrc $HOME/.bashrc
ln -sf $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
ln -sf $HOME/.dotfiles/git/.gitignore $HOME/.gitignore
ln -sf $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
ln -sf $HOME/.dotfiles/top/.toprc $HOME/.toprc

echo "general.user: configuring vim"
mkdir -p $HOME/.vim/colors
ln -sf $HOME/.dotfiles/vim/colors/bayus.vim $HOME/.vim/colors/bayus.vim
mkdir -p $HOME/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim