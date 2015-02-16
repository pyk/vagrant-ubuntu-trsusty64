#!/bin/bash

echo "postgresql.root: installing postgresql 9.4"
wget --no-check-certificate --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
echo 'deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main' > /etc/apt/sources.list.d/pgdg.list
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install postgresql-9.4 postgresql-contrib-9.4 libpq-dev postgresql-client-9.4 postgresql-server-dev-9.4 -y

echo "postgresql.root: setup host-based authentication"
echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.4/main/pg_hba.conf
echo "listen_addresses='*'" >> /etc/postgresql/9.4/main/postgresql.conf