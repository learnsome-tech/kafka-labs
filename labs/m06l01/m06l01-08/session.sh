#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l01 — Dual Writes And Why They Lose Data
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l01
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m06l01-broker m06l01-db
#   m06l01-broker
#   m06l01-db
docker network rm m06l01-net
#   m06l01-net
