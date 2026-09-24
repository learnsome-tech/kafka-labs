#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l04 — Evolving An Event Without Breaking Consumers
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v2_producer.py
