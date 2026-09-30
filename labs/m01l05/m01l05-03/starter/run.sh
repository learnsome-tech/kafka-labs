#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m01l05-broker
T=m01l05-events
sleep 6
docker exec $B rpk topic create $T
echo record-one | docker exec -i $B rpk topic produce $T
echo record-two | docker exec -i $B rpk topic produce $T
echo record-three | docker exec -i $B rpk topic produce $T
