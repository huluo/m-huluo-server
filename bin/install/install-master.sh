#!/bin/bash

#rm -rf /data
mkdir /data
cd /data/
mkdir /data/redis
mkdir /data/mongodb
chown -R nobody /data

cd /opt/m-huluo-server/
MAINPATH=`pwd`

rm -rf ${MAINPATH}/logs
mkdir ${MAINPATH}/logs

easy_install supervisor
rm -rf /etc/supervisord.conf
echo_supervisord_conf > /etc/supervisord.conf

cd ${MAINPATH}/soft/

#tar zxvf mysql-5.6.16.tar.gz 
#cd mysql-5.6.16
#cmake .
#make
#make install
#cd ${MAINPATH}/soft/
#rm -rf mysql-5.6.16/
#/usr/local/mysql/scripts/mysql_install_db --user=root --basedir=/usr/local/mysql --datadir=/data/mysql
#ln -s /usr/local/mysql/lib/libmysqlclient.so.18 /usr/lib/
#ldconfig

#tar xvzf nginx-1.5.6.tar.gz
#cd nginx-1.5.6/
#./configure --prefix=/usr/local/nginx --with-http_ssl_module
#make
#make install
#cd ${MAINPATH}/soft/
#rm -rf nginx-1.5.6/
#echo "export PATH=\$PATH:/usr/local/nginx/sbin" >> ~/.bash_profile
#htpasswd -bc ${MAINPATH}/etc/htpasswd 用户名 密码

#tar zxvf memcached-1.4.15.tar.gz 
#cd memcached-1.4.15/
#./configure 
#make
#make install
#cd ${MAINPATH}/soft/
#rm -rf memcached-1.4.15/

#rm -rf /etc/httpd/conf/httpd.conf
#ln -s ${MAINPATH}/etc/httpd.conf /etc/httpd/conf/httpd.conf

tar zxvf libevent-2.0.21-stable.tar.gz 
cd libevent-2.0.21-stable/
./configure 
make
make install
cd ${MAINPATH}/soft/
rm -rf libevent-2.0.21-stable/

tar zxvf redis-2.6.12.tar.gz 
cd redis-2.6.12
make
make install
cd ${MAINPATH}/soft/
rm -rf redis-2.6.12

cd mongodb-linux-x86_64-2.4.2/
rm -rf /usr/local/mongodb
ln -s `pwd` /usr/local/mongodb
echo "export PATH=\$PATH:/usr/local/mongodb/bin" >> ~/.bash_profile
cd ${MAINPATH}/soft/

rm -rf /etc/httpd/conf.d/httpd.ganglia.conf
ln -s ${MAINPATH}/etc/httpd.ganglia.conf /etc/httpd/conf.d/http.ganglia.conf

tar zxvf coreseek-4.1-beta.tar.gz
cd coreseek-4.1-beta/mmseg-3.2.14/
./bootstrap 
./configure --prefix=/usr/local/mmseg
make
make install
cd ../csft-4.1/
sh buildconf.sh 
./configure --prefix=/usr/local/coreseek --with-mysql=/usr/local/mysql --with-mmseg=/usr/local/mmseg --with-mmseg-includes=/usr/local/mmseg/include/mmseg/ --with-mmseg-libs=/usr/local/mmseg/lib/ --with-python
make
make install
cd ${MAINPATH}/soft/
rm -rf coreseek-4.1-beta/

cd ${MAINPATH}/bin/install/
sh install-etc-base.sh

cd ${MAINPATH}/bin/install/
sh install-node.sh

