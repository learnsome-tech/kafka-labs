#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m06l04-broker T=m06l04-prices
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 6
