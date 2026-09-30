docker network create m03l05-net
docker run -d --rm --name m03l05-broker \
  --network m03l05-net \
  redpandadata/redpanda:v25.2.6 redpanda start \
  --mode dev-container --smp 1 --memory 512M \
  --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m03l05-broker:9092
sleep 6
