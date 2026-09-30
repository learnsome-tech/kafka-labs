docker network create m03l04-net
docker run -d --rm --name m03l04-broker \
  --network m03l04-net \
  redpandadata/redpanda:v25.2.6 redpanda start \
  --mode dev-container --smp 1 --memory 512M \
  --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m03l04-broker:9092
sleep 6
