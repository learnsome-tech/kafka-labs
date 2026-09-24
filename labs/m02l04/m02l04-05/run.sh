#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m02l04 — Batching, Linger And Throughput
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m02l04-net -v "$PWD:/app" m02l04-client python batch.py
