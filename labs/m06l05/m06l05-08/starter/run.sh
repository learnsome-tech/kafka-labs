#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l05-broker
docker network rm m06l05-net
