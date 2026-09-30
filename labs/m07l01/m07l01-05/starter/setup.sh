#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start-m07l01.sh
B="docker exec m07l01-b1"
$B rpk cluster info
$B rpk topic create m07l01-orders -p 3 -r 3
$B rpk topic describe m07l01-orders -p
