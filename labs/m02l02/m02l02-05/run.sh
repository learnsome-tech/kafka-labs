#!/bin/sh
# Apache Kafka & Event Streaming — lesson m02l02 — Keys And Ordering Per Partition
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l02
# © LearnSome.tech
docker run --rm --network m02l02-net \
  -v "$PWD:/app" m02l02-client python producer.py
