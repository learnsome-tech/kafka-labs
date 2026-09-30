#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m07l01-b1 m07l01-b2 m07l01-b3
docker network rm m07l01-net
