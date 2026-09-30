#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B="docker exec m07l02-b1"
$B rpk topic describe m07l02-events -p
docker rm -f m07l02-b1 m07l02-b2 m07l02-b3
docker network rm m07l02-net
