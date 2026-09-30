#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

PG="docker exec m06l01-db psql -U postgres"
$PG -c "SELECT count(*) FROM orders"
#   ...
#    1
#   (1 row)
docker exec m06l01-broker rpk topic describe m06l01-events
#   ...
$PG -c "TRUNCATE orders"
#   TRUNCATE TABLE
