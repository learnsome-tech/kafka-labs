#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l01 — A Consumer In Python
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l01
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m03l01-broker ; T=m03l01-events
docker exec m03l01-broker rpk topic create m03l01-events
#   ...
echo login | docker exec -i $B rpk topic produce $T --key u1
#   ...
echo signup | docker exec -i $B rpk topic produce $T --key u2
#   ...
echo logout | docker exec -i $B rpk topic produce $T --key u1
#   ...
