docker network create m01l04-net
docker run -d --rm --name m01l04-broker \
  --network m01l04-net \
  redpandadata/redpanda:v25.2.6 redpanda start \
  --mode dev-container --smp 1 --memory 512M \
  --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m01l04-broker:9092
