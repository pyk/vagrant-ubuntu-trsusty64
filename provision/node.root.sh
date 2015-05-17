#!/bin/bash

if [ -x /usr/local/bin/n ];then 
    echo "node.root: node `node -v` already installed"
else
    echo "node.root: installing the latest stable release of nodejs"
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.1/install.sh | bash
    exec $SHELL
    nvm install stable
fi