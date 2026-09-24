#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l03 — Topics, Partitions And Where A Record Lands
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l03
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l03-broker
T=m01l03-orders
docker exec $B rpk topic describe $T
#   ...
