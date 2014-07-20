#!/bin/bash

cd /opt/m-huluo-server/
MAINPATH=`pwd`

cd ${MAINPATH}/bin/install/
sh install-etc-base.sh
cd ${MAINPATH}/

nginx -t
nginx -s reload
supervisorctl reread
supervisorctl update
supervisorctl status
supervisorctl restart memcached:8001
supervisorctl restart redis:8002
supervisorctl restart mongod:8003

