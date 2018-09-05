#!/bin/sh

cd /opt
wget https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.15.tar.gz
tar -xvf libiconv-1.15.tar.gz
cd libiconv-1.15
./configure
make
make install DESTDIR=/var/lib/gnu-libiconv
