#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l01-broker m06l01-db
docker network rm m06l01-net
