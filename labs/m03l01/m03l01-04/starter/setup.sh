#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
B=m03l01-broker ; T=m03l01-events
docker exec m03l01-broker rpk topic create m03l01-events
echo login | docker exec -i $B rpk topic produce $T --key u1
echo signup | docker exec -i $B rpk topic produce $T --key u2
echo logout | docker exec -i $B rpk topic produce $T --key u1
