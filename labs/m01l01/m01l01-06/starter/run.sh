#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m01l01-broker
docker network rm m01l01-net
