#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m05l02-broker
S=m05l02-orders-value
docker exec $B rpk registry subject list
docker exec $B rpk registry schema get $S --schema-version 1
