#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l01 — Dual Writes And Why They Lose Data
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m06l01-net -v "$PWD:/app" m06l01-client python db_first.py
