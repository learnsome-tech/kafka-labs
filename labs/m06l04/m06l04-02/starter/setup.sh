docker network create m06l04-net >/dev/null
docker run -d --rm --name m06l04-broker --network m06l04-net \
  redpandadata/redpanda:v25.2.6 redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m06l04-broker:9092 >/dev/null
sleep 6
docker build -q -t m06l04-client . >/dev/null
docker exec m06l04-broker rpk topic create m06l04-prices \
  -c cleanup.policy=compact -c segment.bytes=10000 \
  -c min.cleanable.dirty.ratio=0.01 --partitions 1
