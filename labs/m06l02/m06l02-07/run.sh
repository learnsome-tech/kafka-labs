#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l02 — The Transactional Outbox
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m06l02-net -v "$PWD:/app" m06l02-client python relay.py
