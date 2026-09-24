#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l03 — Committing Offsets: Auto, Manual And Lag
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l03
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m03l03-broker ; T=m03l03-events
docker exec m03l03-broker rpk topic create m03l03-events
echo w | docker exec -i $B rpk topic produce $T --key k1
echo x | docker exec -i $B rpk topic produce $T --key k1
echo y | docker exec -i $B rpk topic produce $T --key k1
echo z | docker exec -i $B rpk topic produce $T --key k1
