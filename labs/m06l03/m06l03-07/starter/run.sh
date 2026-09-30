#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m06l03-db
docker network rm m06l03-net
