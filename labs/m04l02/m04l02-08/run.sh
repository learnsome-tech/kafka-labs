#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m04l02 — Idempotent Consumers And Deduplication Keys
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m04l02-broker
docker network rm m04l02-net
