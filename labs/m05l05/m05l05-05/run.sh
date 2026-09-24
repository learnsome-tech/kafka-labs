#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l05 — Headers, Envelopes And Event Metadata
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m05l05-broker
T=m05l05-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 1
