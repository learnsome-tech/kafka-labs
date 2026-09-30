#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker exec m03l03-broker rpk group describe m03l03-auditors
docker rm -f m03l03-broker
docker network rm m03l03-net
