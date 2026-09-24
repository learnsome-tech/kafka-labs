#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l02 — The Schema Registry
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m05l02-broker
S=m05l02-orders-value
docker exec $B rpk registry subject list
docker exec $B rpk registry schema get $S --schema-version 1
