#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m07l05-b1 m07l05-b2 m07l05-b3
docker network rm m07l05-net
