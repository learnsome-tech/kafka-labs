#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l03 — Committing Offsets: Auto, Manual And Lag
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l03
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
B=m03l03-broker ; T=m03l03-events
docker exec m03l03-broker rpk topic create m03l03-events
echo w | docker exec -i $B rpk topic produce $T --key k1
echo x | docker exec -i $B rpk topic produce $T --key k1
echo y | docker exec -i $B rpk topic produce $T --key k1
echo z | docker exec -i $B rpk topic produce $T --key k1
docker build -q -t m03l03-client . >/dev/null
docker run --rm --network m03l03-net -v $PWD:/app m03l03-client python consumer.py
