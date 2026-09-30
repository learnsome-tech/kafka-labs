#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m03l05-broker ; T=m03l05-events
docker exec m03l05-broker rpk topic create m03l05-events
echo p | docker exec -i $B rpk topic produce $T --key k1
echo q | docker exec -i $B rpk topic produce $T --key k1
echo r | docker exec -i $B rpk topic produce $T --key k1
echo s | docker exec -i $B rpk topic produce $T --key k1
echo t | docker exec -i $B rpk topic produce $T --key k1
echo u | docker exec -i $B rpk topic produce $T --key k1
