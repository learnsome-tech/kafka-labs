#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m06l02-broker T=m06l02-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 2
#   order-1 {"id":1,"item":"widget"}
#   order-2 {"id":2,"item":"gadget"}
PG="docker exec m06l02-db psql -U postgres"
$PG -c "SELECT id,event_key,published FROM outbox ORDER BY id"
#   ...
#    1 | order-1 | t
#    2 | order-2 | t
#   (2 rows)
