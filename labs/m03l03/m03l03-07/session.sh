#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l03 — Committing Offsets: Auto, Manual And Lag
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l03
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker exec m03l03-broker rpk group describe m03l03-auditors
#   ...
docker rm -f m03l03-broker
#   m03l03-broker
docker network rm m03l03-net
#   m03l03-net
