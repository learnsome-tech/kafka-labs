#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m06l01-broker T=m06l01-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 1
PG="docker exec m06l01-db psql -U postgres"
$PG -c "SELECT count(*) FROM orders"
