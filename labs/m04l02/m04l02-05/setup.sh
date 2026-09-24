#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m04l02 — Idempotent Consumers And Deduplication Keys
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l02
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m04l02-net -v "$PWD:/app" m04l02-client python producer.py
