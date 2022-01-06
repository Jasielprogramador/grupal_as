#!/bin/bash

sysbench \
--db-driver=mysql \
--mysql-user=user \
--mysql_password=password \
--mysql-db=db \
--mysql-host=127.0.0.1 \
--mysql-port=3306 \
--tables=10 \
--table-size=10000 \
--threads=6 \
/usr/share/sysbench/oltp_update_index.lua cleanup

sysbench \
--db-driver=mysql \
--mysql-user=user \
--mysql_password=password \
--mysql-db=db \
--mysql-host=127.0.0.1 \
--mysql-port=3306 \
--tables=10 \
--table-size=10000 \
--threads=6 \
/usr/share/sysbench/oltp_update_index.lua prepare

sysbench \
--db-driver=mysql \
--mysql-user=user \
--mysql_password=password \
--mysql-db=db \
--mysql-host=127.0.0.1 \
--mysql-port=3306 \
--tables=10 \
--table-size=10000 \
--threads=6 \
/usr/share/sysbench/oltp_update_index.lua run