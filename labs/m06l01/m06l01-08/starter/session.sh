#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m06l01-broker m06l01-db
#   m06l01-broker
#   m06l01-db
docker network rm m06l01-net
#   m06l01-net
