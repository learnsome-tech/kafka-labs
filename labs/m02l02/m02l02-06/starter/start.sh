#!/bin/sh
docker network create m02l02-net
docker run -d --rm --name m02l02-broker \
  --network m02l02-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m02l02-broker:9092
sleep 6
docker exec m02l02-broker rpk topic create m02l02-keys \
  --partitions 2
