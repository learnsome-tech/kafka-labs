#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l03 — Change Data Capture In Principle
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l03
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
E="docker exec m06l03-db psql -U postgres -c"
$E "INSERT INTO products (item) VALUES ('widget')"
$E "UPDATE products SET item = 'gadget' WHERE id = 1"
