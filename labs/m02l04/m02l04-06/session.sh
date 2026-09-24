#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m02l04 — Batching, Linger And Throughput
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l04
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m02l04-broker
docker exec $B rpk topic describe m02l04-ev -p
#   PARTITION LEADER EPOCH REPLICAS LOG-START-OFFSET HIGH-WATERMARK
#   0 0 1 [0] 0 20
docker rm -f m02l04-broker
#   m02l04-broker
docker network rm m02l04-net
#   m02l04-net
