#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l05 — At Most Once, At Least Once
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m03l05-net -v $PWD:/app m03l05-client python alo.py
