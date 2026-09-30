#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m06l05-net -v "$PWD:/app" m06l05-client python produce_orders.py
docker run --rm --network m06l05-net -v "$PWD:/app" m06l05-client python totals.py
