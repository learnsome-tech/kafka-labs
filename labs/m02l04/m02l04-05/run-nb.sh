#!/bin/sh
# Apache Kafka & Event Streaming — lesson m02l04 — Batching, Linger And Throughput
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l04
# © LearnSome.tech
docker run --rm --network m02l04-net \
  -v "$PWD:/app" m02l04-client python no-batch.py
