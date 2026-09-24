#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m02l05 — Idempotent Producers And Retries
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m02l05-net -v "$PWD:/app" m02l05-client python idemp.py
