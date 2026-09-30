#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m06l04-broker
docker exec $B rpk topic describe m06l04-prices -c
#   ...
#   cleanup.policy compact DYNAMIC_TOPIC_CONFIG
#   ...
#   min.cleanable.dirty.ratio 0.01 DYNAMIC_TOPIC_CONFIG
#   ...
#   segment.bytes 10000 DYNAMIC_TOPIC_CONFIG
