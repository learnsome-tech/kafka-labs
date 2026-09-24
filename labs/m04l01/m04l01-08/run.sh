#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m04l01 — Duplicates Are The Default
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m04l01-broker
docker network rm m04l01-net
