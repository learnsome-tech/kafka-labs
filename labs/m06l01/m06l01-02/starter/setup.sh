docker network create m06l01-net >/dev/null
docker run -d --rm --name m06l01-broker --network m06l01-net \
  redpandadata/redpanda:v25.2.6 redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m06l01-broker:9092 >/dev/null
docker run -d --rm --name m06l01-db --network m06l01-net \
  -e POSTGRES_PASSWORD=secret postgres:16-alpine >/dev/null
sleep 6
docker build -q -t m06l01-client . >/dev/null
docker exec m06l01-db psql -U postgres -c \
  "CREATE TABLE orders (id serial PRIMARY KEY, item text)"
docker exec m06l01-broker rpk topic create m06l01-events --partitions 1
