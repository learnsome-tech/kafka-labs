#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m02l04 — Batching, Linger And Throughput
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l04
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start.sh
docker build -q -t m02l04-client .
bash run-nb.sh
