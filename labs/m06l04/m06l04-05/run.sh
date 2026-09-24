#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l04 — Log Compaction: A Topic As A Table
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m06l04-net -v "$PWD:/app" m06l04-client python fold_prices.py
