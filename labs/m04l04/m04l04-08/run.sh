#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m04l04 — Poison Messages And Dead Letter Topics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m04l04-broker
docker network rm m04l04-net
