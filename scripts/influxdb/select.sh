#!/bin/bash

cd ~/go/bin/
./influxdb-benchmark --count 10000 --clients 10 --batch 10 --format=text -username="user" -password="password"