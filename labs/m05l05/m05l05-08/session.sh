#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l05 — Headers, Envelopes And Event Metadata
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l05
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m05l05-broker
#   m05l05-broker
docker network rm m05l05-net
#   m05l05-net
