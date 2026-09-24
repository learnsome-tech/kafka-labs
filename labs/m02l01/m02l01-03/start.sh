#!/bin/sh
# Apache Kafka & Event Streaming — lesson m02l01 — A Producer In Python
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l01
# © LearnSome.tech
docker network create m02l01-net
docker run -d --rm --name m02l01-broker \
  --network m02l01-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m02l01-broker:9092
sleep 6
docker exec m02l01-broker rpk topic create m02l01-ev
