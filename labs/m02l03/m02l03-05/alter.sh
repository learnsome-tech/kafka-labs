#!/bin/sh
# Apache Kafka & Event Streaming — lesson m02l03 — Acknowledgements: What Acks Means For Durability
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l03
# © LearnSome.tech
docker exec m02l03-broker rpk topic alter-config \
  m02l03-reliable --set min.insync.replicas=2
docker exec m02l03-broker rpk topic describe m02l03-reliable -p
docker rm -f m02l03-broker
docker network rm m02l03-net
