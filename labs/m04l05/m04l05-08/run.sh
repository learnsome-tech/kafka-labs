#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m04l05 — Retries With Backoff Topics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m04l05-broker
docker network rm m04l05-net
