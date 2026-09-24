# Apache Kafka & Event Streaming — lesson m04l04 — Poison Messages And Dead Letter Topics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l04
# © LearnSome.tech
docker network create m04l04-net >/dev/null
docker run -d --rm --name m04l04-broker \
  --network m04l04-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m04l04-broker:9092 \
  >/dev/null
sleep 6
docker build -q -t m04l04-client . >/dev/null
docker exec m04l04-broker rpk topic create \
  m04l04-orders m04l04-dlq --partitions 1
