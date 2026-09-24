#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l01 — Three Brokers: Replication And Leaders
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l01
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B="docker exec m07l01-b1"
$B rpk cluster info
#   CLUSTER
#   =======
#   ...
#   BROKERS
#   =======
#   ID HOST PORT
#   0* m07l01-b1 9092
#   1 m07l01-b2 9092
#   2 m07l01-b3 9092
$B rpk topic create m07l01-orders -p 3 -r 3
#   TOPIC STATUS
#   m07l01-orders OK
$B rpk topic describe m07l01-orders -p
#   PARTITION LEADER EPOCH REPLICAS LOG-START-OFFSET HIGH-WATERMARK
#   ...
