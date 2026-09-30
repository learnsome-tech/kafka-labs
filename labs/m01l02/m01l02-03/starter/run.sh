#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m01l02-broker
sleep 6
docker exec $B rpk cluster info
docker exec $B rpk cluster health
