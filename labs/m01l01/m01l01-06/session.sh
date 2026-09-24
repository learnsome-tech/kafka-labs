#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l01 — Why A Log And Not A Queue
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l01
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m01l01-broker
#   m01l01-broker
docker network rm m01l01-net
#   m01l01-net
