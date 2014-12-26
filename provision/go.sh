#!/bin/bash
 
echo "0: Provisioning go machine..."

echo "1: setup configuration"
export DEBIAN_FRONTEND=noninteractive
export HOME=/home/vagrant
export GO_FILE_NAME=go1.4.linux-amd64.tar.gz

echo "2: update machine"
apt-get update

echo "3: set timezone"
echo "Asia/Jakarta" | tee /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

echo "4: installing git"
apt-get install git -y

echo "5: installing wget"
apt-get install wget -y

echo "6: don't make me homesick please"
git clone https://github.com/pyk/dotfiles.git $HOME/.dotfiles
ln -sf $HOME/.dotfiles/bash/.bashrc $HOME/.bashrc

echo "7: installing the latest stable release of golang"
mkdir /home/vagrant/provision
cd /home/vagrant/provision
wget --no-check-certificate --no-verbose https://storage.googleapis.com/golang/$GO_FILE_NAME
tar -C /usr/local -xzf $GO_FILE_NAME

echo "8: setup golang workspace"
mkdir -p $HOME/go/src/github.com/pyk
chown -R vagrant $HOME/go