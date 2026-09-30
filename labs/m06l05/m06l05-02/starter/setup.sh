docker network create m06l05-net >/dev/null
docker run -d --rm --name m06l05-broker --network m06l05-net \
  redpandadata/redpanda:v25.2.6 redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m06l05-broker:9092 >/dev/null
sleep 6
docker build -q -t m06l05-client . >/dev/null
docker exec m06l05-broker rpk topic create m06l05-orders --partitions 1
