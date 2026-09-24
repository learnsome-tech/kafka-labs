#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l02 — The Schema Registry
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m05l02-broker
docker network rm m05l02-net
