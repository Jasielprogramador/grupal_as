#!/bin/bash


sysbench \
--mongo-write-concern=1 \
--mongo-url="mongodb://localhost" \
--mongo-database-name=sbtest \
--oltp_table_size=100000 \
--oltp_tables_count=6 \
--threads=6 \
--rand-type=pareto \
--report-interval=10 \
--max-requests=0 \
--max-time=600 \
--oltp-point-selects=10 \
--oltp-simple-ranges=1 \
--oltp-sum-ranges=1 \
--oltp-order-ranges=1 \
--oltp-distinct-ranges=1 \
--oltp-index-updates=1 \
--oltp-non-index-updates=1 \
--oltp-inserts=1 \
/home/asier/PycharmProjects/grupal_as/scripts/mongodb/oltp.lua cleanup

