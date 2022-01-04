sysbench \
--db-driver=pgsql \
--report-interval=2 \
--oltp-table-size=100000 \
--oltp-tables-count=24 \
--threads=64 \
--time=60 \
--pgsql-host=192.168.55.61 \
--pgsql-port=5432 \
--pgsql-user=sbtest \
--pgsql-password=password \
--pgsql-db=sbtest \
/usr/share/sysbench/tests/include/oltp_legacy/oltp.lua \
run