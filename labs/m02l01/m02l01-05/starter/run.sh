#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m02l01-broker
docker exec $B rpk topic consume m02l01-ev -f '%v\n' --num 10
docker rm -f m02l01-broker
docker network rm m02l01-net
