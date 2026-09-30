#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
PG="docker exec m06l02-db psql -U postgres"
$PG -c "SELECT id,event_key,published FROM outbox ORDER BY id"
