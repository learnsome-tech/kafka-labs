#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l05 — Retention: Time, Size And Why Data Stays
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l05
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start.sh
B=m01l05-broker
T=m01l05-events
sleep 6
docker exec $B rpk topic create $T
echo record-one | docker exec -i $B rpk topic produce $T
echo record-two | docker exec -i $B rpk topic produce $T
echo record-three | docker exec -i $B rpk topic produce $T
B=m01l05-broker
T=m01l05-events
CFG=retention.ms=3600000
docker exec $B rpk topic alter-config $T -s $CFG
docker exec $B rpk topic describe -c $T
