#!/bin/sh
# Apache Kafka & Event Streaming — lesson m07l02 — In-Sync Replicas And Minimum ISR
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l02
# © LearnSome.tech
NET=m07l02-net
S=m07l02-b1:33145,m07l02-b2:33145,m07l02-b3:33145
IMG=redpandadata/redpanda:v25.2.6
docker network create $NET
for N in 1 2 3; do
  docker run -d --rm --name m07l02-b${N} \
    --network $NET $IMG redpanda start \
    --mode dev-container --smp 1 \
    --memory 512M --overprovisioned \
    --kafka-addr 0.0.0.0:9092 \
    --advertise-kafka-addr m07l02-b${N}:9092 \
    --rpc-addr 0.0.0.0:33145 \
    --advertise-rpc-addr m07l02-b${N}:33145 \
    --seeds $S
  sleep 1
done
sleep 7
docker exec m07l02-b1 rpk topic create m07l02-events -p 3 -r 3
docker exec m07l02-b1 rpk topic alter-config m07l02-events \
  --set min.insync.replicas=2
