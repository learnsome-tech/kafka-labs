#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l05 — When Kafka Is The Wrong Tool
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m07l05-c . && docker run --rm --network m07l05-net m07l05-c python decide.py
