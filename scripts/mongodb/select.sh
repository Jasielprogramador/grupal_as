#!/bin/bash

cd scripts/mongodb/lua

sysbench oltp-mongo.lua --tables=10 --threads=6 --table-size=10000 --mongodb-db=db --mongodb-host=localhost --mongodb-port=27017 --report-interval=1 \
--mongodb_host=localhost --rand-type=pareto cleanup

sysbench oltp-mongo.lua --tables=10 --threads=6 --table-size=10000 --mongodb-db=db --mongodb-host=localhost --mongodb-port=27017 --report-interval=1 \
--mongodb_host=localhost --rand-type=pareto prepare

sysbench oltp-mongo.lua --tables=10 --threads=6 --table-size=10000 --mongodb-db=db --mongodb-host=localhost --mongodb-port=27017 --read_only=on --report-interval=1 --rand-type=pareto run