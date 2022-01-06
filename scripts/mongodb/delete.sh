#!/bin/bash

cd ./scripts/mongodb/lua

sysbench  oltp-mongo.lua --tables=6 --threads=6 --table-size=100 --mongodb-db=db --mongodb-host=localhost --mongodb-port=27017 --time=120 --report-interval=1 --rand-type=pareto cleanup

sysbench oltp-mongo.lua --tables=6 --threads=6 --table-size=100 --mongodb-db=db --mongodb-host=localhost --mongodb-port=27017 --time=120 --report-interval=1 --rand-type=pareto prepare

sysbench  oltp-mongo.lua --tables=6 --threads=6 --table-size=100 --mongodb-db=sbtest --mongodb-host=localhost --mongodb-port=27017 --time=5  --point_selects=1 --simple_ranges=0 --sum_ranges=0 --order_ranges=0 --distinct_ranges=0 --index_updates=0 --non_index_updates=0  --delete_inserts=0  --report-interval=1 --rand-type=pareto run