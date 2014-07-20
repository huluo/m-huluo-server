#!/bin/bash

cd /opt/m-huluo-server/
MAINPATH=`pwd`
mkdir -p ${MAINPATH}/logs

cd ${MAINPATH}/soft/

tar xvf cmake-2.8.12.1.tar 
cd cmake-2.8.12.1
cmake .
./bootstrap 
make
make install
cd ${MAINPATH}/soft/
rm -rf cmake-2.8.12.1/

tar zxvf libtool-2.4.2.tar.gz 
cd libtool-2.4.2
./configure 
make
make install
cd ${MAINPATH}/soft/
rm -rf libtool-2.4.2/

tar zxvf autoconf-2.69.tar.gz
cd autoconf-2.69/
./configure 
make
make install
cd ${MAINPATH}/soft/
rm -rf autoconf-2.69/

tar zxvf m4-1.4.17.tar.gz 
cd m4-1.4.17
./configure 
make
make install
cd ${MAINPATH}/soft/
rm -rf m4-1.4.17/

tar zxvf tornado-2.4.1.tar.gz
cd tornado-2.4.1/
python2.6 setup.py build
python2.6 setup.py install
cd ../
cd ${MAINPATH}/soft/
rm -rf tornado-2.4.1/

tar zxvf python-memcached-1.31.tar.gz 
cd python-memcached-1.31/
python2.6 setup.py install
cd ${MAINPATH}/soft/
rm -rf python-memcached-1.31/

tar zxvf redis-py.tar.gz 
cd redis-py/
python2.6 setup.py install
cd ${MAINPATH}/soft/
rm -rf redis-py/

tar zxvf psycopg2-2.5.tar.gz 
cd psycopg2-2.5/
python2.6 setup.py install
cd ${MAINPATH}/soft/
rm -rf psycopg2-2.5/

tar zxvf pymongo-2.5.tar.gz 
cd pymongo-2.5/
python2.6 setup.py install
cd ${MAINPATH}/soft/
rm -rf pymongo-2.5/

tar zxvf MySQL-python-1.2.4b4.tar.gz
cd MySQL-python-1.2.4b4
python2.6 setup.py install
cd ${MAINPATH}/soft/
rm -rf MySQL-python-1.2.4b4/

tar zxvf SQLAlchemy-0.9.3.tar.gz 
cd SQLAlchemy-0.9.3
python2.6 setup.py install
cd ${MAINPATH}/soft/
rm -rf SQLAlchemy-0.9.3/

tar zxvf Jinja2-2.6.tar.gz 
cd Jinja2-2.6/
python2.6 setup.py install
cd ${MAINPATH}/soft/
rm -rf Jinja2-2.6/

tar zxvf tld-0.6.1.tar.gz 
cd tld-0.6.1/
python2.6 setup.py install
cd ${MAINPATH}/soft/
rm -rf tld-0.6.1/


