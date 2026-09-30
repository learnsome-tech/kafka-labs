docker network create m05l05-net >/dev/null
docker run -d --rm --name m05l05-broker \
  --network m05l05-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m05l05-broker:9092 \
  >/dev/null
sleep 6
docker build -q -t m05l05-client . >/dev/null
docker exec m05l05-broker rpk topic create m05l05-events --partitions 1
