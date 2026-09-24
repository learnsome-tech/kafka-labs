# Apache Kafka & Event Streaming — lesson m01l03 — Topics, Partitions And Where A Record Lands
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l03
# © LearnSome.tech
docker network create m01l03-net
docker run -d --rm --name m01l03-broker \
  --network m01l03-net \
  redpandadata/redpanda:v25.2.6 redpanda start \
  --mode dev-container --smp 1 --memory 512M \
  --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m01l03-broker:9092
