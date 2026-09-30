#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m05l05-net -v "$PWD:/app" m05l05-client python envelope_consumer.py
