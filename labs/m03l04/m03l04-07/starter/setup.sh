#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
B=m03l04-broker ; T=m03l04-events
docker exec $B rpk topic create m03l04-events --partitions 3
echo a | docker exec -i $B rpk topic produce $T --partition 0
echo b | docker exec -i $B rpk topic produce $T --partition 1
echo c | docker exec -i $B rpk topic produce $T --partition 2
docker build -q -t m03l04-client . >/dev/null
docker run --rm --network m03l04-net -v $PWD:/app m03l04-client python consumer.py
