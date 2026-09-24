#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l05 — When Kafka Is The Wrong Tool
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l05
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash show-cost.sh
docker build -q -t m07l05-c . && docker run --rm --network m07l05-net m07l05-c python decide.py
