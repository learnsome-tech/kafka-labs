#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l02 — In-Sync Replicas And Minimum ISR
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m07l02-c . && docker run --rm --network m07l02-net m07l02-c python prod.py
