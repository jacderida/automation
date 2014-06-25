#!/usr/bin/env bash

# Note that at the moment, this script assumes a postgres user already exists!

yum install -y make
yum install -y gcc
yum install -y readline-devel
yum install -y zlib-devel
curl -O http://ftp.postgresql.org/pub/source/v9.3.4/postgresql-9.3.4.tar.gz
gunzip postgresql-9.3.4.tar.gz
tar xvf postgresql-9.3.4.tar
present_directory=$(pwd)
cd postgresql-9.3.4
./configure
make && make install
LD_LIBRARY_PATH=/usr/local/pgsql/lib
export LD_LIBRARY_PATH
cd $present_directory
mkdir /usr/local/pgsql/data
chown postgres /usr/local/pgsql/data
rm -f postgresql-9.3.4.tar
rm -rf postgresql-9.3.4
