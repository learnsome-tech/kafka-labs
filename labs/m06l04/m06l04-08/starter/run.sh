#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l04-broker
docker network rm m06l04-net
