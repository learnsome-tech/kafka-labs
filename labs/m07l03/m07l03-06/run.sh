#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l03 — Losing A Broker
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l03
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m07l03-b1 m07l03-b2 m07l03-b3
docker network rm m07l03-net
