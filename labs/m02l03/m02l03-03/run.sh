#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m02l03 — Acknowledgements: What Acks Means For Durability
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l03
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m02l03-client .
