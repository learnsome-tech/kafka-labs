#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m07l04-b1 m07l04-b2 m07l04-b3
docker network rm m07l04-net
