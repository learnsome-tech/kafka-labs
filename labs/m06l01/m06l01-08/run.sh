#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l01 — Dual Writes And Why They Lose Data
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l01-broker m06l01-db
docker network rm m06l01-net
