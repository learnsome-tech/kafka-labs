docker exec -i m05l03-broker sh -c 'cat > /tmp/v1.json' << 'EOF'
{"type":"object","properties":{"id":{"type":"integer"}},"required":["id"]}
EOF
docker exec m05l03-broker rpk registry schema create \
  m05l03-events-value --schema /tmp/v1.json --type json
docker exec m05l03-broker rpk registry compatibility-level set \
  m05l03-events-value --level BACKWARD
