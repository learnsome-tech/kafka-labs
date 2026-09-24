#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l02 — In-Sync Replicas And Minimum ISR
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l02
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B="docker exec m07l02-b1"
$B rpk topic describe m07l02-events -p
#   PARTITION LEADER EPOCH REPLICAS LOG-START-OFFSET HIGH-WATERMARK
#   ...
docker rm -f m07l02-b1 m07l02-b2 m07l02-b3
#   m07l02-b1
#   m07l02-b2
#   m07l02-b3
docker network rm m07l02-net
#   m07l02-net
