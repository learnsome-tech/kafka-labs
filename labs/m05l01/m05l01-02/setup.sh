# Apache Kafka & Event Streaming — lesson m05l01 — Bytes On The Wire: JSON, Avro And Protobuf
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l01
# © LearnSome.tech
docker network create m05l01-net >/dev/null
docker run -d --rm --name m05l01-broker \
  --network m05l01-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m05l01-broker:9092 \
  >/dev/null
sleep 6
docker build -q -t m05l01-client . >/dev/null
docker exec m05l01-broker rpk topic create \
  m05l01-json --partitions 1
docker exec m05l01-broker rpk topic create \
  m05l01-binary --partitions 1
