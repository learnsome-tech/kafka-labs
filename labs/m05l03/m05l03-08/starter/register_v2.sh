docker exec -i m05l03-broker sh -c 'cat > /tmp/v2.json' << 'EOF'
{"type":"object","properties":{"id":{"type":"integer"},"s":{"type":"string"}}}
EOF
docker exec m05l03-broker rpk registry schema create \
  m05l03-events-value --schema /tmp/v2.json --type json
docker exec m05l03-broker rpk registry schema list \
  m05l03-events-value
