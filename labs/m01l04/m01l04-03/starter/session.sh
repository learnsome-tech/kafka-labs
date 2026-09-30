#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m01l04-broker
T=m01l04-events
sleep 6
docker exec $B rpk topic create $T -p 1
#   ...
echo event-a | docker exec -i $B rpk topic produce $T
#   ...
echo event-b | docker exec -i $B rpk topic produce $T
#   ...
echo event-c | docker exec -i $B rpk topic produce $T
#   ...
echo event-d | docker exec -i $B rpk topic produce $T
#   ...
echo event-e | docker exec -i $B rpk topic produce $T
#   ...
