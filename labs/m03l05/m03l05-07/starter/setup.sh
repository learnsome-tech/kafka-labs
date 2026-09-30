#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
B=m03l05-broker ; T=m03l05-events
docker exec m03l05-broker rpk topic create m03l05-events
echo p | docker exec -i $B rpk topic produce $T --key k1
echo q | docker exec -i $B rpk topic produce $T --key k1
echo r | docker exec -i $B rpk topic produce $T --key k1
echo s | docker exec -i $B rpk topic produce $T --key k1
echo t | docker exec -i $B rpk topic produce $T --key k1
echo u | docker exec -i $B rpk topic produce $T --key k1
docker build -q -t m03l05-client . >/dev/null
docker run --rm --network m03l05-net -v $PWD:/app m03l05-client python alo.py --crash
docker run --rm --network m03l05-net -v $PWD:/app m03l05-client python alo.py
