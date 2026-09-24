#!/usr/bin/env bash
# Apache Kafka & Event Streaming — lesson m05l04 — Evolving An Event Without Breaking Consumers
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l04
# © LearnSome.tech
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v1_producer.py
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v1_consumer.py
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v2_producer.py
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v1_consumer.py
