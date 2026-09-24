#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m02l04 — Batching, Linger And Throughput
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m02l04-broker
docker exec $B rpk topic describe m02l04-ev -p
docker rm -f m02l04-broker
docker network rm m02l04-net
