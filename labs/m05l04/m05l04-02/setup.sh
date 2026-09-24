# Apache Kafka & Event Streaming — lesson m05l04 — Evolving An Event Without Breaking Consumers
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l04
# © LearnSome.tech
docker network create m05l04-net >/dev/null
docker run -d --rm --name m05l04-broker \
  --network m05l04-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m05l04-broker:9092 \
  >/dev/null
sleep 6
docker build -q -t m05l04-client . >/dev/null
docker exec m05l04-broker rpk topic create m05l04-events --partitions 1
