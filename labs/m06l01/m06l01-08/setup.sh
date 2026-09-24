#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l01 — Dual Writes And Why They Lose Data
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l01
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m06l01-net -v "$PWD:/app" m06l01-client python db_first.py
PG="docker exec m06l01-db psql -U postgres"
$PG -c "SELECT count(*) FROM orders"
docker exec m06l01-broker rpk topic describe m06l01-events
$PG -c "TRUNCATE orders"
docker run --rm --network m06l01-net -v "$PWD:/app" m06l01-client python kafka_first.py
B=m06l01-broker T=m06l01-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 1
PG="docker exec m06l01-db psql -U postgres"
$PG -c "SELECT count(*) FROM orders"
