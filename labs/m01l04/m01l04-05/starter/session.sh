#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l04-broker
T=m01l04-events
docker exec $B rpk topic consume $T -f '%o %v
' -o 0 --num 5
#   ...
#   0 event-a
#   1 event-b
#   2 event-c
#   3 event-d
#   4 event-e
