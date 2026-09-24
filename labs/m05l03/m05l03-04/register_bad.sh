# Apache Kafka & Event Streaming — lesson m05l03 — Compatibility Modes
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l03
# © LearnSome.tech
docker exec -i m05l03-broker sh -c 'cat > /tmp/bad.json' << 'EOF'
{"type":"string"}
EOF
docker exec m05l03-broker rpk registry schema create \
  m05l03-events-value --schema /tmp/bad.json --type json
