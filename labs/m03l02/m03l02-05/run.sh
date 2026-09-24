#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l02 — Consumer Groups And Partition Assignment
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m03l02-net -v $PWD:/app m03l02-client python consumer.py
