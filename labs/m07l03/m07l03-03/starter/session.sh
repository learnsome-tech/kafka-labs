#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker stop m07l03-b3
#   m07l03-b3
sleep 10
B="docker exec -i m07l03-b1"
$B rpk topic describe m07l03-orders -p
#   PARTITION LEADER EPOCH REPLICAS LOG-START-OFFSET HIGH-WATERMARK
#   ...
echo k1:v1 | $B rpk topic produce m07l03-orders -f '%k:%v\n'
#   ...
$B timeout 30 rpk topic consume m07l03-orders -n1 -f '%k %v\n'
#   k1 v1
