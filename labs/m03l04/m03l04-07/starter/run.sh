#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker exec m03l04-broker rpk group describe m03l04-workers
docker rm -f m03l04-broker
docker network rm m03l04-net
