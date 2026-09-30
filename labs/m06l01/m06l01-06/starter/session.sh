#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m06l01-broker T=m06l01-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 1
#   order keyboard
PG="docker exec m06l01-db psql -U postgres"
$PG -c "SELECT count(*) FROM orders"
#   ...
#    0
#   (1 row)
