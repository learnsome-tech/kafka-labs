#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l01 — Bytes On The Wire: JSON, Avro And Protobuf
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l01
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m05l01-broker
#   m05l01-broker
docker network rm m05l01-net
#   m05l01-net
