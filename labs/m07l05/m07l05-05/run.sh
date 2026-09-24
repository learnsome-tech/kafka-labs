#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l05 — When Kafka Is The Wrong Tool
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m07l05-b1 m07l05-b2 m07l05-b3
docker network rm m07l05-net
