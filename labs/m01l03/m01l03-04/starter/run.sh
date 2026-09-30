#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m01l03-broker
T=m01l03-orders
docker exec $B rpk topic consume $T -f '%k %v
' -o 0 --num 3
