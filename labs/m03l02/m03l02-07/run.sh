#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m03l02 — Consumer Groups And Partition Assignment
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l02
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
docker exec m03l02-broker rpk group describe m03l02-billing
docker rm -f m03l02-broker
docker network rm m03l02-net
