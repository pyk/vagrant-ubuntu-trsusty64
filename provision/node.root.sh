#!/bin/bash

if [ -x /usr/local/bin/n ];then 
    echo "node.root: node `node -v` already installed"
else
    echo "node.root: installing the latest stable release of nodejs"
    mkdir /home/vagrant/provision
    git clone https://github.com/tj/n.git /home/vagrant/provision/n
    cd /home/vagrant/provision/n/
    make install
    n stable
fi