#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l03 — Losing A Broker
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l03
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker start m07l03-b3
sleep 8
B="docker exec m07l03-b1"
$B rpk cluster info
