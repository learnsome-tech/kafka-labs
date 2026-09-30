#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m01l05-broker
T=m01l05-events
CFG=retention.ms=3600000
docker exec $B rpk topic alter-config $T -s $CFG
docker exec $B rpk topic describe -c $T
