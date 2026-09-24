#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m02l02 — Keys And Ordering Per Partition
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l02
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start.sh
docker build -q -t m02l02-client .
bash run.sh
