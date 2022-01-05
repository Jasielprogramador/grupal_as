#!/bin/bash

sysbench \
--db-driver=mysql \
--mysql-user=user \
--mysql_password=password \
--mysql-db=db \
--mysql-host=127.0.0.1 \
--mysql-port=3306 \
--tables=6 \
--table-size=100000 \
--threads=6 \
/usr/share/sysbench/oltp_read_only.lua cleanup

sysbench \
--db-driver=mysql \
--mysql-user=user \
--mysql_password=password \
--mysql-db=db \
--mysql-host=127.0.0.1 \
--mysql-port=3306 \
--tables=6 \
--table-size=100000 \
--threads=6 \
/usr/share/sysbench/oltp_read_only.lua prepare

sysbench \
--db-driver=mysql \
--mysql-user=user \
--mysql_password=password \
--mysql-db=db \
--mysql-host=127.0.0.1 \
--mysql-port=3306 \
--tables=6 \
--table-size=100000 \
--threads=6 \
/usr/share/sysbench/oltp_read_only.lua run
