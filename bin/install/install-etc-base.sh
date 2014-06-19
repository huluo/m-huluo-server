#!/bin/bash

cd /opt/m-huluo-server/
MAINPATH=`pwd`
mkdir -p ${MAINPATH}/logs

rm -rf /etc/redis.conf
ln -s ${MAINPATH}/etc/redis.conf /etc/redis.conf

cd ${MAINPATH}/soft/mongodb-linux-x86_64-2.4.2/
rm -rf /usr/local/mongodb
ln -s `pwd` /usr/local/mongodb
cd ${MAINPATH}/soft/
rm -rf /etc/mongod.conf
ln -s ${MAINPATH}/etc/mongod.conf /etc/mongod.conf

rm -rf /etc/my.cnf
ln -s ${MAINPATH}/etc/my.cnf /etc/my.cnf

rm -rf /usr/local/nginx/conf/nginx.conf
ln -s ${MAINPATH}/etc/nginx/nginx.conf /usr/local/nginx/conf/nginx.conf
rm -rf /usr/local/nginx/conf/vhost/base
ln -s ${MAINPATH}/etc/nginx/base    /usr/local/nginx/conf/vhost/base
rm -rf /usr/local/nginx/conf/vhost/huluo
ln -s ${MAINPATH}/etc/nginx/huluo   /usr/local/nginx/conf/vhost/huluo

rm /etc/supervisord.conf
ln -s ${MAINPATH}/etc/supervisord.conf /etc/supervisord.conf
mkdir /etc/supervisord.conf.d
rm -rf /etc/supervisord.conf.d/base
ln -s ${MAINPATH}/etc/supervisor/base   /etc/supervisord.conf.d/base
rm -rf /etc/supervisord.conf.d/huluo
ln -s ${MAINPATH}/etc/supervisor/huluo  /etc/supervisord.conf.d/huluo

