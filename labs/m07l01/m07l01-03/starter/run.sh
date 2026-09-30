#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
B="docker exec m07l01-b1"
$B rpk cluster info
$B rpk topic create m07l01-orders -p 3 -r 3
$B rpk topic describe m07l01-orders -p
