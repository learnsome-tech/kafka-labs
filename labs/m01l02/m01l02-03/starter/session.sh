#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l02-broker
sleep 6
docker exec $B rpk cluster info
#   ...
#   0* m01l02-broker 9092
#   ...
docker exec $B rpk cluster health
#   CLUSTER HEALTH OVERVIEW
#   =======================
#   Healthy: true
#   Unhealthy reasons: []
#   Controller ID: 0
#   All nodes: [0]
#   Nodes down: []
#   Nodes in recovery mode: []
#   ...
