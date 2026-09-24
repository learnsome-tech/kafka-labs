#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l03 — Losing A Broker
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l03
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start-m07l03.sh
docker stop m07l03-b3
sleep 10
B="docker exec -i m07l03-b1"
$B rpk topic describe m07l03-orders -p
echo k1:v1 | $B rpk topic produce m07l03-orders -f '%k:%v\n'
$B timeout 30 rpk topic consume m07l03-orders -n1 -f '%k %v\n'
