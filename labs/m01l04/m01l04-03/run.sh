#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l04 — Offsets: Position, Not Acknowledgement
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m01l04-broker
T=m01l04-events
sleep 6
docker exec $B rpk topic create $T -p 1
echo event-a | docker exec -i $B rpk topic produce $T
echo event-b | docker exec -i $B rpk topic produce $T
echo event-c | docker exec -i $B rpk topic produce $T
echo event-d | docker exec -i $B rpk topic produce $T
echo event-e | docker exec -i $B rpk topic produce $T
