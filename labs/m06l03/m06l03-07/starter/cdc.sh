S='pg_logical_slot_get_changes'
F="data NOT LIKE 'BEGIN%' AND data NOT LIKE 'COMMIT%'"
docker exec m06l03-db psql -U postgres \
  -c "SELECT data FROM $S('m06l03_slot',NULL,NULL) WHERE $F"
