#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l04 — Log Compaction: A Topic As A Table
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m06l04-broker T=m06l04-prices
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 6
