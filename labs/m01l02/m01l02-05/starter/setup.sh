#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start.sh
B=m01l02-broker
sleep 6
docker exec $B rpk cluster info
docker exec $B rpk cluster health
