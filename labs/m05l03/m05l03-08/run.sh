#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l03 — Compatibility Modes
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l03
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m05l03-broker
docker network rm m05l03-net
