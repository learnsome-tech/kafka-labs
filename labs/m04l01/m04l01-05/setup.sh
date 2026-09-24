#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m04l01 — Duplicates Are The Default
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l01
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m04l01-net -v "$PWD:/app" m04l01-client python producer.py
