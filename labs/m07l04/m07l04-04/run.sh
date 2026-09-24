#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l04 — Watching Lag And Sizing Partitions
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m07l04-c . && docker run --rm --network m07l04-net m07l04-c python cons.py
