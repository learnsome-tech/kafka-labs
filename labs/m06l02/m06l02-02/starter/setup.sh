docker network create m06l02-net >/dev/null
docker run -d --rm --name m06l02-broker --network m06l02-net \
  redpandadata/redpanda:v25.2.6 redpanda start --mode dev-container \
  --smp 1 --memory 512M --overprovisioned \
  --kafka-addr 0.0.0.0:9092 \
  --advertise-kafka-addr m06l02-broker:9092 >/dev/null
docker run -d --rm --name m06l02-db --network m06l02-net \
  -e POSTGRES_PASSWORD=secret postgres:16-alpine >/dev/null
sleep 6
docker build -q -t m06l02-client . >/dev/null
docker exec m06l02-db psql -U postgres -c \
  "CREATE TABLE orders (id serial PRIMARY KEY, item text);
   CREATE TABLE outbox (id serial PRIMARY KEY, event_key text,
   payload text, published boolean DEFAULT false)"
docker exec m06l02-broker rpk topic create m06l02-events --partitions 1
