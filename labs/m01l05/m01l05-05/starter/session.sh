#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l05-broker
T=m01l05-events
CFG=retention.bytes=1000000
docker exec $B rpk topic alter-config $T -s $CFG
#   ...
docker exec $B rpk topic describe -c $T
#   ...
#   retention.bytes 1000000 DYNAMIC_TOPIC_CONFIG
#   ...
