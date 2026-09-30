#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker exec m03l02-broker rpk group describe m03l02-billing
docker rm -f m03l02-broker
docker network rm m03l02-net
