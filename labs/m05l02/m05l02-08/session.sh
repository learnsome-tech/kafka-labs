#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l02 — The Schema Registry
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l02
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m05l02-broker
#   m05l02-broker
docker network rm m05l02-net
#   m05l02-net
