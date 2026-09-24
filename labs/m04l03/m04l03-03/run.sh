#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m04l03 — Transactions And Exactly Once Semantics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l03
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m04l03-net -v "$PWD:/app" m04l03-client python commit.py
