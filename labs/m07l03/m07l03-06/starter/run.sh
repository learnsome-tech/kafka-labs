#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m07l03-b1 m07l03-b2 m07l03-b3
docker network rm m07l03-net
