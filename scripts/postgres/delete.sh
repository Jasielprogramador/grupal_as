#!/bin/bash

sysbench \
--db-driver=pgsql \
--report-interval=2 \
--oltp-table-size=100 \
--oltp-tables-count=6 \
--threads=6 \
--pgsql-host=127.0.0.1 \
--pgsql-port=5432 \
--pgsql-user=user \
--pgsql-password=password \
--pgsql-db=db \
/usr/share/sysbench/tests/include/oltp_legacy/parallel_prepare.lua \
run

sysbench \
--db-driver=pgsql \
--report-interval=2 \
--oltp-table-size=100 \
--oltp-tables-count=6 \
--threads=6 \
--pgsql-host=127.0.0.1 \
--pgsql-port=5432 \
--pgsql-user=user \
--pgsql-password=password \
--pgsql-db=db \
/usr/share/sysbench/tests/include/oltp_legacy/delete.lua \
run