#!/bin/sh

# Author : Paul Stevenson
# Create influxdb config file and database for shinyproxy usage statistics
# only to be run once after the first "docker-compose up -d" on a system
# run in docker with: docker exec influxdb /home/run_first_time.sh

# influxdb configuration file creation
influxd config > influxdb.conf

# create shinyproxy_usagestats database
influx -execute 'CREATE DATABASE shinyproxy_usage'
