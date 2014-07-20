#!/bin/bash

/usr/local/coreseek/bin/indexer -c /opt/m-huluo-server/etc/csft.conf --rotate --all 2>&1 >> /opt/m-huluo-server/logs/indexer.log

