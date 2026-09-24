#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l04 — Watching Lag And Sizing Partitions
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l04
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B="docker exec m07l04-b1"
$B rpk group describe m07l04-grp
#   GROUP m07l04-grp
#   ...
#   TOTAL-LAG 3
#   ...
$B rpk topic add-partitions m07l04-ev --num 2
#   TOPIC STATUS
#   m07l04-ev OK
$B rpk topic describe m07l04-ev -p
#   PARTITION LEADER EPOCH REPLICAS LOG-START-OFFSET HIGH-WATERMARK
#   ...
