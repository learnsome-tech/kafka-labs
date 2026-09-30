#!/bin/sh
docker run --rm --network m02l02-net \
  -v "$PWD:/app" m02l02-client python producer.py
