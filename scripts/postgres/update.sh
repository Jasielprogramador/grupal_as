#!/bin/bash

sysbench \
--db-driver=pgsql \
--report-interval=2 \
--oltp-table-size=10000 \
--oltp-tables-count=10 \
--threads=6 \
--pgsql-host=127.0.0.1 \
--pgsql-port=5432 \
--pgsql-user=user \
--pgsql-password=password \
--pgsql-db=db \
/usr/share/sysbench/tests/include/oltp_legacy/parallel_prepare.lua \
cleanup

sysbench \
--db-driver=pgsql \
--report-interval=2 \
--oltp-table-size=10000 \
--oltp-tables-count=10 \
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
--oltp-table-size=10000 \
--oltp-tables-count=10 \
--threads=6 \
--pgsql-host=127.0.0.1 \
--pgsql-port=5432 \
--pgsql-user=user \
--pgsql-password=password \
--pgsql-db=db \
/usr/share/sysbench/tests/include/oltp_legacy/oltp.lua \
run