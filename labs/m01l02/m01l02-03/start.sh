# Apache Kafka & Event Streaming — lesson m01l02 — Starting A Broker And Reading Its Metadata
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l02
# © LearnSome.tech
docker network create m01l02-net
docker run -d --rm --name m01l02-broker \
  --network m01l02-net \
  redpandadata/redpanda:v25.2.6 redpanda start \
  --mode dev-container --smp 1 --memory 512M \
  --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m01l02-broker:9092
