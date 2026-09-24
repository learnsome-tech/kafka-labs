#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l01 — A Consumer In Python
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m03l01-client . >/dev/null
