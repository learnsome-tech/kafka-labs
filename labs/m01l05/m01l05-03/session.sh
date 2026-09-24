#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l05 — Retention: Time, Size And Why Data Stays
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l05
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l05-broker
T=m01l05-events
sleep 6
docker exec $B rpk topic create $T
#   ...
echo record-one | docker exec -i $B rpk topic produce $T
#   ...
echo record-two | docker exec -i $B rpk topic produce $T
#   ...
echo record-three | docker exec -i $B rpk topic produce $T
#   ...
