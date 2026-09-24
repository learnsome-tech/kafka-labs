#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m02l05 — Idempotent Producers And Retries
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l05
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start.sh
docker build -q -t m02l05-client .
bash run.sh
docker run --rm --network m02l05-net -v "$PWD:/app" m02l05-client python idemp.py
