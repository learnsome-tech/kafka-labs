#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l04 — Rebalancing And Its Cost
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l04
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m03l04-net -v $PWD:/app m03l04-client python consumer.py
