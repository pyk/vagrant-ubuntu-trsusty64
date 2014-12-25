#!/bin/bash
 
echo "0: Provisioning nodejs machine..."

echo "1: setup configuration"
export DEBIAN_FRONTEND=noninteractive

echo "2: update machine"
apt-get update

echo "3: set timezone"
echo "Asia/Jakarta" | tee /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

echo "4: installing git"
apt-get install git -y

echo "5: installing the latest stable release of nodejs"
mkdir /home/vagrant/provision
git clone https://github.com/tj/n.git /home/vagrant/provision/n
cd /home/vagrant/provision/n/
make install
n stable