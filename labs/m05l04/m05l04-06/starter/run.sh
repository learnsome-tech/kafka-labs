#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v1_consumer.py
