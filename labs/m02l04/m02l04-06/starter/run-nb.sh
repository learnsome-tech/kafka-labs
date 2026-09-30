#!/bin/sh
docker run --rm --network m02l04-net \
  -v "$PWD:/app" m02l04-client python no-batch.py
