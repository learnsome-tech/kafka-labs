#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
E="docker exec m06l03-db psql -U postgres -c"
$E "INSERT INTO products (item) VALUES ('widget')"
$E "UPDATE products SET item = 'gadget' WHERE id = 1"
