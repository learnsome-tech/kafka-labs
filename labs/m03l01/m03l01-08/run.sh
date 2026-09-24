#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l01 — A Consumer In Python
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m03l01-broker
docker network rm m03l01-net
