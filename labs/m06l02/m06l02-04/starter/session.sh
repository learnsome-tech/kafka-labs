#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

PG="docker exec m06l02-db psql -U postgres"
$PG -c "SELECT id,event_key,published FROM outbox ORDER BY id"
#   ...
#    1 | order-1 | f
#    2 | order-2 | f
#   (2 rows)
