#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l02 — The Transactional Outbox
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m06l02-broker T=m06l02-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 2
PG="docker exec m06l02-db psql -U postgres"
$PG -c "SELECT id,event_key,published FROM outbox ORDER BY id"
