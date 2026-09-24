#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l01 — A Consumer In Python
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m03l01-net -v $PWD:/app m03l01-client python consumer.py
