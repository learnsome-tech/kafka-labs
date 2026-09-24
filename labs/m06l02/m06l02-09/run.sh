#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l02 — The Transactional Outbox
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l02-broker m06l02-db
docker network rm m06l02-net
