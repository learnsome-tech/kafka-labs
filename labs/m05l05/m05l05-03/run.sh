#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l05 — Headers, Envelopes And Event Metadata
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m05l05-net -v "$PWD:/app" m05l05-client python envelope_producer.py
