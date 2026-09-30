#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m02l04-broker
docker exec $B rpk topic describe m02l04-ev -p
docker rm -f m02l04-broker
docker network rm m02l04-net
