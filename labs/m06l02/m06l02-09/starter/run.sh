#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l02-broker m06l02-db
docker network rm m06l02-net
