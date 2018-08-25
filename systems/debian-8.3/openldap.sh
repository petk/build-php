#!/bin/sh

# Custom build for OpenLDAP for Debian

apt install -y libdb-dev

mkdir -p /opt
cd /opt
wget http://repository.linagora.org/OpenLDAP/openldap-release/openldap-2.4.46.tgz
tar -xvf openldap-2.4.46.tgz
cd openldap-2.4.46
./configure
make depend
make
make install DESTDIR=/usr/local/openldap
