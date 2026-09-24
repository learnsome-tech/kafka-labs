#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l01 — Three Brokers: Replication And Leaders
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m07l01-b1 m07l01-b2 m07l01-b3
docker network rm m07l01-net
