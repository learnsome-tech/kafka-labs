#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m05l01-broker
T=m05l01-json
docker exec $B rpk topic consume $T -f '%k %v
' -o 0 --num 1
