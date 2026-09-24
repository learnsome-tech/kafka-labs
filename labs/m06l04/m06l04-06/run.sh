#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l04 — Log Compaction: A Topic As A Table
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m06l04-broker
docker exec $B rpk topic describe m06l04-prices -c
