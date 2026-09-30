#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m01l02-broker
docker network rm m01l02-net
