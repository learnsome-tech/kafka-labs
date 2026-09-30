#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m06l02-net -v "$PWD:/app" m06l02-client python populate.py
PG="docker exec m06l02-db psql -U postgres"
$PG -c "SELECT id,event_key,published FROM outbox ORDER BY id"
docker run --rm --network m06l02-net -v "$PWD:/app" m06l02-client python relay.py
B=m06l02-broker T=m06l02-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 2
PG="docker exec m06l02-db psql -U postgres"
$PG -c "SELECT id,event_key,published FROM outbox ORDER BY id"
docker run --rm --network m06l02-net -v "$PWD:/app" m06l02-client python relay.py
