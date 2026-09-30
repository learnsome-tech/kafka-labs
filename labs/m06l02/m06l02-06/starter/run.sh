#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m06l02-broker T=m06l02-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 2
PG="docker exec m06l02-db psql -U postgres"
$PG -c "SELECT id,event_key,published FROM outbox ORDER BY id"
