#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m07l04 — Watching Lag And Sizing Partitions
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l04
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start-m07l04.sh
docker build -q -t m07l04-c . && docker run --rm --network m07l04-net m07l04-c python prod.py
docker build -q -t m07l04-c . && docker run --rm --network m07l04-net m07l04-c python cons.py
B="docker exec m07l04-b1"
$B rpk group describe m07l04-grp
$B rpk topic add-partitions m07l04-ev --num 2
$B rpk topic describe m07l04-ev -p
