#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m01l02-broker
docker exec $B rpk topic list
