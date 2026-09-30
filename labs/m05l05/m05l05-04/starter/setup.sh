#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m05l05-net -v "$PWD:/app" m05l05-client python envelope_producer.py
