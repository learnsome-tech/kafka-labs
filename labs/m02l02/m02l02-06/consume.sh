#!/bin/sh
# Apache Kafka & Event Streaming — lesson m02l02 — Keys And Ordering Per Partition
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l02
# © LearnSome.tech
docker exec m02l02-broker rpk topic consume m02l02-keys \
  -f '%p %o %k %v\n' --num 6
docker rm -f m02l02-broker
docker network rm m02l02-net
