#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l05 — Retention: Time, Size And Why Data Stays
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l05
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m01l05-broker
docker network rm m01l05-net
