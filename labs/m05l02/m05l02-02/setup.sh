# Apache Kafka & Event Streaming — lesson m05l02 — The Schema Registry
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l02
# © LearnSome.tech
docker network create m05l02-net >/dev/null
docker run -d --rm --name m05l02-broker \
  --network m05l02-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m05l02-broker:9092 \
  >/dev/null
sleep 6
docker exec m05l02-broker rpk topic create m05l02-orders --partitions 1
