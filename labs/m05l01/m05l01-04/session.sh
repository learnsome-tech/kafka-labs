#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l01 — Bytes On The Wire: JSON, Avro And Protobuf
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l01
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m05l01-broker
T=m05l01-json
docker exec $B rpk topic consume $T -f '%k %v
' -o 0 --num 1
#   order {"type": "order", "id": 42, "total": 99}
