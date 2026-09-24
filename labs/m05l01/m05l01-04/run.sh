#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l01 — Bytes On The Wire: JSON, Avro And Protobuf
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m05l01-broker
T=m05l01-json
docker exec $B rpk topic consume $T -f '%k %v
' -o 0 --num 1
