#!/bin/bash

echo "go.root: runnning..."

echo "go.root: export required env variable"
export GO_FILE_NAME=go1.4.1.linux-amd64.tar.gz
export HOME=/home/vagrant

echo "go.root: installing the latest stable release of golang"
mkdir -p /home/vagrant/provision
cd /home/vagrant/provision
wget --no-check-certificate --no-verbose https://storage.googleapis.com/golang/$GO_FILE_NAME
tar -C /usr/local -xzf $GO_FILE_NAME

echo "go.root: setup golang workspace"
mkdir -p $HOME/go/src/github.com/pyk
chown -R vagrant $HOME/go