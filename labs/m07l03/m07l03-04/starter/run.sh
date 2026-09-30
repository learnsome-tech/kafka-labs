#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker start m07l03-b3
sleep 8
B="docker exec m07l03-b1"
$B rpk cluster info
