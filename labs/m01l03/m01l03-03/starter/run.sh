#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B=m01l03-broker
T=m01l03-orders
sleep 6
docker exec $B rpk topic create $T -p 3
echo a | docker exec -i $B rpk topic produce $T -k k1
echo b | docker exec -i $B rpk topic produce $T -k k1
echo c | docker exec -i $B rpk topic produce $T -k k1
