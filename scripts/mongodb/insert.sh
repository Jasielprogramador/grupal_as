#!/bin/bash

cd /home/asier/PycharmProjects/grupal_as/scripts/mongodb/lua

sysbench  oltp-mongo.lua --tables=10 --threads=10 --table-size=100 --mongodb-db=sbtest --mongodb-host=localhost --mongodb-port=27017 --time=120 --report-interval=1 --rand-type=pareto cleanup

sysbench oltp-mongo.lua --tables=10 --threads=10 --table-size=100 --mongodb-db=sbtest --mongodb-host=localhost --mongodb-port=27017 --time=120 --report-interval=1 --rand-type=pareto prepare

sysbench  oltp-mongo.lua --tables=10 --threads=10 --table-size=100 --mongodb-db=sbtest --mongodb-host=localhost --mongodb-port=27017 --time=120 --report-interval=1 --rand-type=pareto run