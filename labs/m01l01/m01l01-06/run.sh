#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l01 — Why A Log And Not A Queue
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m01l01-broker
docker network rm m01l01-net
