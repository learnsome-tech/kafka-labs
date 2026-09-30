#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m03l02-broker ; T=m03l02-events
docker exec $B rpk topic create m03l02-events --partitions 3
echo a | docker exec -i $B rpk topic produce $T --partition 0
echo b | docker exec -i $B rpk topic produce $T --partition 0
echo c | docker exec -i $B rpk topic produce $T --partition 1
echo d | docker exec -i $B rpk topic produce $T --partition 1
echo e | docker exec -i $B rpk topic produce $T --partition 2
echo f | docker exec -i $B rpk topic produce $T --partition 2
