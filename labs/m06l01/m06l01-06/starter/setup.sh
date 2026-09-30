#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m06l01-net -v "$PWD:/app" m06l01-client python db_first.py
PG="docker exec m06l01-db psql -U postgres"
$PG -c "SELECT count(*) FROM orders"
docker exec m06l01-broker rpk topic describe m06l01-events
$PG -c "TRUNCATE orders"
docker run --rm --network m06l01-net -v "$PWD:/app" m06l01-client python kafka_first.py
