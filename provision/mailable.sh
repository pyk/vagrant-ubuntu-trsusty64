#!/bin/bash
 
echo "0: Provisioning go machine..."

echo "1: setup configuration"
export DEBIAN_FRONTEND=noninteractive
export HOME=/home/vagrant

echo "2: update machine"
apt-get update

echo "3: set timezone"
echo "Asia/Jakarta" | tee /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

echo "4: installing git"
apt-get install git -y

echo "5: don't make me homesick please"
git clone https://github.com/pyk/dotfiles.git $HOME/.dotfiles
ln -sf $HOME/.dotfiles/bash/.bashrc $HOME/.bashrc

# install postfix
# sudo apt-get install -y postfix
# configuration interactive
# sudo dpkg-reconfigure postfix
# install vim
# sudo apt-get install vim