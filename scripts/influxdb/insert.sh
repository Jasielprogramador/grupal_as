#!/bin/bash

cd ~/go/bin/
./influxdb-benchmark --count 100 --clients 6 --batch 10 --format=text -username="user" -password="password"