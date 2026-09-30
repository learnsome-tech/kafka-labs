#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m05l05-broker
T=m05l05-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 1
