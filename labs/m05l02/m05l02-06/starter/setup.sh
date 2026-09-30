#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
bash register.sh
B=m05l02-broker
S=m05l02-orders-value
docker exec $B rpk registry subject list
docker exec $B rpk registry schema get $S --schema-version 1
