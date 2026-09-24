#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l05 — Materialised Views From A Stream
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l05-broker
docker network rm m06l05-net
