#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l04 — Rebalancing And Its Cost
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l04
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker exec m03l04-broker rpk group describe m03l04-workers
#   ...
docker rm -f m03l04-broker
#   m03l04-broker
docker network rm m03l04-net
#   m03l04-net
