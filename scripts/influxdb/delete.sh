#!/bin/bash

cd ~/go/bin/
./go/bin/influxdb-benchmark --count 100 --clients 1 --clean --format=text -username="user" -password="password"