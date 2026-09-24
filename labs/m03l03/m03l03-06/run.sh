#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l03 — Committing Offsets: Auto, Manual And Lag
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l03
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m03l03-net -v $PWD:/app m03l03-client python consumer.py --commit
