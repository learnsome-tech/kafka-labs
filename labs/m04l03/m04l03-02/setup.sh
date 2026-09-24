# Apache Kafka & Event Streaming — lesson m04l03 — Transactions And Exactly Once Semantics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l03
# © LearnSome.tech
docker network create m04l03-net >/dev/null
docker run -d --rm --name m04l03-broker \
  --network m04l03-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m04l03-broker:9092 \
  >/dev/null
sleep 6
docker build -q -t m04l03-client . >/dev/null
docker exec m04l03-broker rpk topic create \
  m04l03-results m04l03-aborted --partitions 1
