#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l04 — Rebalancing And Its Cost
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m03l04-broker ; T=m03l04-events
docker exec $B rpk topic create m03l04-events --partitions 3
echo a | docker exec -i $B rpk topic produce $T --partition 0
echo b | docker exec -i $B rpk topic produce $T --partition 1
echo c | docker exec -i $B rpk topic produce $T --partition 2
