#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l04 — Offsets: Position, Not Acknowledgement
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m01l04-broker
T=m01l04-events
docker exec $B rpk topic consume $T -f '%o %v
' -o 0 --num 5
