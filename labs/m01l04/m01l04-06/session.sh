#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l04 — Offsets: Position, Not Acknowledgement
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l04
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l04-broker
T=m01l04-events
docker exec $B rpk topic consume $T -f '%o %v
' -o 3 --num 2
#   ...
#   3 event-d
#   4 event-e
