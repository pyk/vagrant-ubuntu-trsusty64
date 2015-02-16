#!/bin/bash

echo "nginx.root: installing nginx mainline version"
wget --no-check-certificate --quiet -O - http://nginx.org/keys/nginx_signing.key | apt-key add -
echo 'deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx' >> /etc/apt/sources.list
echo 'deb-src http://nginx.org/packages/mainline/ubuntu/ trusty nginx' >> /etc/apt/sources.list
apt-get update
echo "nginx.root: updated"
apt-get install nginx -y

