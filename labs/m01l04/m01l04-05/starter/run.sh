#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m01l04-broker
T=m01l04-events
docker exec $B rpk topic consume $T -f '%o %v
' -o 0 --num 5
