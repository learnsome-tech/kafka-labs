#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m06l04-broker
docker exec $B rpk topic describe m06l04-prices -c
