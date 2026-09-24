#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l02 — Starting A Broker And Reading Its Metadata
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l02
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l02-broker
docker exec $B rpk topic list
#   ...
