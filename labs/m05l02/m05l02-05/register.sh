# Apache Kafka & Event Streaming — lesson m05l02 — The Schema Registry
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l02
# © LearnSome.tech
docker exec -i m05l02-broker sh -c 'cat > /tmp/v1.json' << 'EOF'
{"type":"object","properties":{"id":{"type":"integer"},"amt":{"type":"number"}}}
EOF
docker exec m05l02-broker rpk registry schema create \
  m05l02-orders-value \
  --schema /tmp/v1.json --type json
