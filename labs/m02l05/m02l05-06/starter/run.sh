#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m02l05-broker
docker exec $B rpk topic consume m02l05-dup -f '%v\n' --num 6
docker rm -f m02l05-broker
docker network rm m02l05-net
