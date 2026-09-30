#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B="docker exec m07l04-b1"
$B rpk group describe m07l04-grp
$B rpk topic add-partitions m07l04-ev --num 2
$B rpk topic describe m07l04-ev -p
