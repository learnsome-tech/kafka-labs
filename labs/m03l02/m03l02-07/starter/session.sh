#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker exec m03l02-broker rpk group describe m03l02-billing
#   ...
docker rm -f m03l02-broker
#   m03l02-broker
docker network rm m03l02-net
#   m03l02-net
