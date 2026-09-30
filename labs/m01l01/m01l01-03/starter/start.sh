docker network create m01l01-net
docker run -d --rm --name m01l01-broker \
  --network m01l01-net \
  redpandadata/redpanda:v25.2.6 redpanda start \
  --mode dev-container --smp 1 --memory 512M \
  --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m01l01-broker:9092
