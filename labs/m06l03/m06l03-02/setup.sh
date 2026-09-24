# Apache Kafka & Event Streaming — lesson m06l03 — Change Data Capture In Principle
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l03
# © LearnSome.tech
docker network create m06l03-net >/dev/null
docker run -d --rm --name m06l03-db --network m06l03-net \
  -e POSTGRES_PASSWORD=secret postgres:16-alpine \
  postgres -c wal_level=logical >/dev/null
sleep 5
docker exec m06l03-db psql -U postgres -c \
  "CREATE TABLE products (id serial PRIMARY KEY, item text)"
Q="SELECT slot_name FROM pg_create_logical_replication_slot"
docker exec m06l03-db psql -U postgres \
  -c "$Q('m06l03_slot','test_decoding')"
