#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m02l05-broker
docker exec $B rpk topic consume m02l05-dup -f '%v\n' --num 6
#   payment-0
#   payment-1
#   payment-2
#   payment-0
#   payment-1
#   payment-2
docker rm -f m02l05-broker
#   m02l05-broker
docker network rm m02l05-net
#   m02l05-net
