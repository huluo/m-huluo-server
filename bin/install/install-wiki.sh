#!/bin/bash

cd /opt/m-huluo-server/
MAINPATH=`pwd`

easy_install supervisor
rm -rf /etc/supervisord.conf
echo_supervisord_conf > /etc/supervisord.conf

cd ${MAINPATH}/soft/

tar zxvf tornado-2.4.1.tar.gz
cd tornado-2.4.1/
python2.6 setup.py build
python2.6 setup.py install
cd ../
cd ${MAINPATH}/soft/
rm -rf tornado-2.4.1/

