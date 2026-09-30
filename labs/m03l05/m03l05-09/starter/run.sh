#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m03l05-broker
docker network rm m03l05-net
