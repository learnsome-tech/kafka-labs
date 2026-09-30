#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
PG="docker exec m06l01-db psql -U postgres"
$PG -c "SELECT count(*) FROM orders"
docker exec m06l01-broker rpk topic describe m06l01-events
$PG -c "TRUNCATE orders"
