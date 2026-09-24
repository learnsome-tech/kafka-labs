#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l05 — Materialised Views From A Stream
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l05
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m06l05-broker
#   m06l05-broker
docker network rm m06l05-net
#   m06l05-net
