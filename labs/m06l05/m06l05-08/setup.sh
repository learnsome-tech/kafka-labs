#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l05 — Materialised Views From A Stream
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l05
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m06l05-net -v "$PWD:/app" m06l05-client python produce_orders.py
docker run --rm --network m06l05-net -v "$PWD:/app" m06l05-client python totals.py
docker run --rm --network m06l05-net -v "$PWD:/app" m06l05-client python rebuild.py
