#!/bin/bash

cd /opt/m-huluo-server/
MAINPATH=`pwd`

rm -rf /usr/local/nginx/conf/vhost/huluo
ln -s ${MAINPATH}/etc/nginx/huluo   /usr/local/nginx/conf/vhost/huluo

rm -rf /etc/supervisord.conf.d/huluo
ln -s ${MAINPATH}/etc/supervisor/huluo  /etc/supervisord.conf.d/huluo

