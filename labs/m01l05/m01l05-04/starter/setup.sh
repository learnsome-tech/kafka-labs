#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start.sh
B=m01l05-broker
T=m01l05-events
sleep 6
docker exec $B rpk topic create $T
echo record-one | docker exec -i $B rpk topic produce $T
echo record-two | docker exec -i $B rpk topic produce $T
echo record-three | docker exec -i $B rpk topic produce $T
