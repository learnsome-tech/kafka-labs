#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l02 — In-Sync Replicas And Minimum ISR
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B="docker exec m07l02-b1"
$B rpk topic describe m07l02-events -p
docker rm -f m07l02-b1 m07l02-b2 m07l02-b3
docker network rm m07l02-net
