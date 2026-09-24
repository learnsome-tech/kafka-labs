#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m02l01 — A Producer In Python
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l01
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m02l01-broker
docker exec $B rpk topic consume m02l01-ev -f '%v\n' --num 10
#   record-0
#   record-1
#   record-2
#   record-3
#   record-4
#   record-5
#   record-6
#   record-7
#   record-8
#   record-9
docker rm -f m02l01-broker
#   m02l01-broker
docker network rm m02l01-net
#   m02l01-net
