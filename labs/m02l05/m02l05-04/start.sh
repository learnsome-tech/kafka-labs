#!/bin/sh
# Apache Kafka & Event Streaming — lesson m02l05 — Idempotent Producers And Retries
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l05
# © LearnSome.tech
docker network create m02l05-net
docker run -d --rm --name m02l05-broker \
  --network m02l05-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m02l05-broker:9092
sleep 6
docker exec m02l05-broker rpk topic create m02l05-dup
docker exec m02l05-broker rpk topic create m02l05-idemp
