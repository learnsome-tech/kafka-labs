#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l04 — Watching Lag And Sizing Partitions
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m07l04-b1 m07l04-b2 m07l04-b3
docker network rm m07l04-net
