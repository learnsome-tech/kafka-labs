#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l01-broker
T=m01l01-events
docker exec $B rpk topic consume $T -f '%o %v
' -o 0 --num 3
#   ...
#   0 login
#   1 click
#   2 order
