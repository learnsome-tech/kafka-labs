#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l05 — At Most Once, At Least Once
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m03l05-client . >/dev/null
