#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l04 — Offsets: Position, Not Acknowledgement
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l04
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m01l04-broker
#   m01l04-broker
docker network rm m01l04-net
#   m01l04-net
