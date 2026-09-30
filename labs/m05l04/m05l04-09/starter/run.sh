#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker rm -f m05l04-broker
docker network rm m05l04-net
