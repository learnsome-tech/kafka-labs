#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l03 — Change Data Capture In Principle
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l03
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l03-db
docker network rm m06l03-net
