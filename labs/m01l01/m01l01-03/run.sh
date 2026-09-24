#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l01 — Why A Log And Not A Queue
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l01
# © LearnSome.tech
set -u
bash setup.sh >/dev/null 2>&1
B=m01l01-broker
T=m01l01-events
sleep 6
docker exec $B rpk topic create $T -p 1
echo login | docker exec -i $B rpk topic produce $T
echo click | docker exec -i $B rpk topic produce $T
echo order | docker exec -i $B rpk topic produce $T
docker exec $B rpk topic consume $T -f '%o %v
' -o 0 --num 3
