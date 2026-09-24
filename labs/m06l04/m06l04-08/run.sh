#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l04 — Log Compaction: A Topic As A Table
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l04-broker
docker network rm m06l04-net
