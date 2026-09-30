#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m04l02-broker
#   m04l02-broker
docker network rm m04l02-net
#   m04l02-net
