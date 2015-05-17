#!/bin/bash

# this general provision is run on all machines
# and run as root.

echo "general.root: running..."

echo "general.root: export required env variable"
export DEBIAN_FRONTEND=noninteractive
export HOME=/home/vagrant

echo "general.root: update machine"
apt-get update

echo "general.root: set timezone to Asia/Jakarta"
echo "Asia/Jakarta" | tee /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

echo "general.root: generate id_ID.UTF-8 locale"
locale-gen id_ID.UTF-8
dpkg-reconfigure locales

echo "general.root: installing git"
apt-get install git -y

echo "general.root: installing wget"
apt-get install wget -y

echo "general.root: installing curl"
apt-get install curl -y

echo "general.root: installing vim"
apt-get install vim -y

echo "general.root: installing build-essential"
apt-get install build-essential -y