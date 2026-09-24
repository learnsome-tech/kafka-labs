#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l02 — Starting A Broker And Reading Its Metadata
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l02
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start.sh
B=m01l02-broker
sleep 6
docker exec $B rpk cluster info
docker exec $B rpk cluster health
B=m01l02-broker
docker exec $B rpk topic list
