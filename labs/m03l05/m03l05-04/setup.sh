#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l05 — At Most Once, At Least Once
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l05
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
B=m03l05-broker ; T=m03l05-events
docker exec m03l05-broker rpk topic create m03l05-events
echo p | docker exec -i $B rpk topic produce $T --key k1
echo q | docker exec -i $B rpk topic produce $T --key k1
echo r | docker exec -i $B rpk topic produce $T --key k1
echo s | docker exec -i $B rpk topic produce $T --key k1
echo t | docker exec -i $B rpk topic produce $T --key k1
echo u | docker exec -i $B rpk topic produce $T --key k1
