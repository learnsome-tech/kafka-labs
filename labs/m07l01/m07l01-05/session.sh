#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l01 — Three Brokers: Replication And Leaders
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l01
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m07l01-b1 m07l01-b2 m07l01-b3
#   m07l01-b1
#   m07l01-b2
#   m07l01-b3
docker network rm m07l01-net
#   m07l01-net
