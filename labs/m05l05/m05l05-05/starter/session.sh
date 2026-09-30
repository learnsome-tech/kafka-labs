#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m05l05-broker
T=m05l05-events
docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 1
#   ...
