#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l01-broker
T=m01l01-events
sleep 6
docker exec $B rpk topic create $T -p 1
#   ...
echo login | docker exec -i $B rpk topic produce $T
#   ...
echo click | docker exec -i $B rpk topic produce $T
#   ...
echo order | docker exec -i $B rpk topic produce $T
#   ...
docker exec $B rpk topic consume $T -f '%o %v
' -o 0 --num 3
#   ...
#   0 login
#   1 click
#   2 order
