#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v1_producer.py
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v1_consumer.py
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v2_producer.py
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v1_consumer.py
