#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m01l03 — Topics, Partitions And Where A Record Lands
# https://learnsome.tech/courses/kafka-course/watch?lesson=m01l03
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start.sh
B=m01l03-broker
T=m01l03-orders
sleep 6
docker exec $B rpk topic create $T -p 3
echo a | docker exec -i $B rpk topic produce $T -k k1
echo b | docker exec -i $B rpk topic produce $T -k k1
echo c | docker exec -i $B rpk topic produce $T -k k1
B=m01l03-broker
T=m01l03-orders
docker exec $B rpk topic consume $T -f '%k %v
' -o 0 --num 3
