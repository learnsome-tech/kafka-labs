#!/bin/sh
# Apache Kafka & Event Streaming — lesson m07l05 — When Kafka Is The Wrong Tool
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l05
# © LearnSome.tech
NET=m07l05-net
S=m07l05-b1:33145,m07l05-b2:33145,m07l05-b3:33145
IMG=redpandadata/redpanda:v25.2.6
docker network create $NET
for N in 1 2 3; do
  docker run -d --rm --name m07l05-b${N} \
    --network $NET $IMG redpanda start \
    --mode dev-container --smp 1 \
    --memory 512M --overprovisioned \
    --kafka-addr 0.0.0.0:9092 \
    --advertise-kafka-addr m07l05-b${N}:9092 \
    --rpc-addr 0.0.0.0:33145 \
    --advertise-rpc-addr m07l05-b${N}:33145 \
    --seeds $S
  sleep 1
done
sleep 7
