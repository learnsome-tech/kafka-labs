docker network create m05l03-net >/dev/null
docker run -d --rm --name m05l03-broker \
  --network m05l03-net \
  redpandadata/redpanda:v25.2.6 \
  redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m05l03-broker:9092 \
  >/dev/null
sleep 6
docker exec m05l03-broker rpk topic create m05l03-events --partitions 1
