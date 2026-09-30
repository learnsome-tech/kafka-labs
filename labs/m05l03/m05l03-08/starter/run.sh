#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m05l03-broker
docker network rm m05l03-net
