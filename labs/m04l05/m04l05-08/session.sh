#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m04l05 — Retries With Backoff Topics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l05
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m04l05-broker
#   m04l05-broker
docker network rm m04l05-net
#   m04l05-net
