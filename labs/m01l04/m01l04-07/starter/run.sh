#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m01l04-broker
docker network rm m01l04-net
