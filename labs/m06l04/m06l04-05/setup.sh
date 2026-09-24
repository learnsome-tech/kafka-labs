#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l04 — Log Compaction: A Topic As A Table
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l04
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m06l04-net -v "$PWD:/app" m06l04-client python produce_prices.py
B=m06l04-broker T=m06l04-prices
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 6
