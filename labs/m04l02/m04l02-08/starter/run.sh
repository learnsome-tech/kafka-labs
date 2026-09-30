#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m04l02-broker
docker network rm m04l02-net
