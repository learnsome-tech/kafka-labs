#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l01 — Three Brokers: Replication And Leaders
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B="docker exec m07l01-b1"
$B rpk cluster info
$B rpk topic create m07l01-orders -p 3 -r 3
$B rpk topic describe m07l01-orders -p
