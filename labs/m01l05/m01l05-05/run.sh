#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l05 — Retention: Time, Size And Why Data Stays
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m01l05-broker
T=m01l05-events
CFG=retention.bytes=1000000
docker exec $B rpk topic alter-config $T -s $CFG
docker exec $B rpk topic describe -c $T
