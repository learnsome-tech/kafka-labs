#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker start m07l03-b3
#   m07l03-b3
sleep 8
B="docker exec m07l03-b1"
$B rpk cluster info
#   CLUSTER
#   =======
#   ...
#   BROKERS
#   =======
#   ID HOST PORT
#   0* m07l03-b1 9092
#   1 m07l03-b2 9092
#   2 m07l03-b3 9092
