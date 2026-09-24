#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m04l03 — Transactions And Exactly Once Semantics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l03
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m04l03-net -v "$PWD:/app" m04l03-client python commit.py
docker run --rm --network m04l03-net -v "$PWD:/app" m04l03-client python reader.py
docker run --rm --network m04l03-net -v "$PWD:/app" m04l03-client python abort.py
