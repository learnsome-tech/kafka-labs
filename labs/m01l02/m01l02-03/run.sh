#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l02 — Starting A Broker And Reading Its Metadata
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m01l02-broker
sleep 6
docker exec $B rpk cluster info
docker exec $B rpk cluster health
