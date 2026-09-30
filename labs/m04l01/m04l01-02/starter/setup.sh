docker network create m04l01-net >/dev/null
docker run -d --rm --name m04l01-broker \
  --network m04l01-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m04l01-broker:9092 \
  >/dev/null
sleep 6
docker build -q -t m04l01-client . >/dev/null
docker exec m04l01-broker rpk topic create \
  m04l01-events --partitions 1
