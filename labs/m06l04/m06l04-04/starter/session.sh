#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m06l04-broker T=m06l04-prices
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 6
#   apple 1.20
#   banana 0.50
#   apple 1.25
#   cherry 3.00
#   banana 0.55
#   apple 1.30
