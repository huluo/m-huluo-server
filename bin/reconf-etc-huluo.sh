#!/bin/bash

cd /opt/m-huluo-server/
MAINPATH=`pwd`

rm -rf /usr/local/nginx/conf/available-sites/nginx.huluo.conf
ln -s ${MAINPATH}/etc/nginx.huluo.conf /usr/local/nginx/conf/available-sites/nginx.huluo.conf

rm -rf /etc/supervisord.conf.d/huluo
mkdir /etc/supervisord.conf.d/huluo
ln -s ${MAINPATH}/etc/supervisor.huluo.conf /etc/supervisord.conf.d/huluo/supervisor.huluo.conf

