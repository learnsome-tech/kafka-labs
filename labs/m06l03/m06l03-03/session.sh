#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m06l03 — Change Data Capture In Principle
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l03
# © LearnSome.tech
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

E="docker exec m06l03-db psql -U postgres -c"
$E "INSERT INTO products (item) VALUES ('widget')"
#   INSERT 0 1
$E "UPDATE products SET item = 'gadget' WHERE id = 1"
#   UPDATE 1
