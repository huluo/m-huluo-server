#!/bin/bash

cd /opt/m-huluo-server/
MAINPATH=`pwd`

mkdir -p ./dist/huluo/
rm -rf ./dist/huluo/*
cp ./build/huluo/*.pyc ./dist/huluo/

cd ${MAINPATH}/bin/
sh reconf-etc-huluo.sh
cd ${MAINPATH}/

nginx -t
nginx -s reload
supervisorctl reread
supervisorctl update
supervisorctl status
supervisorctl restart huluo:8501
#supervisorctl restart huluo:8502

