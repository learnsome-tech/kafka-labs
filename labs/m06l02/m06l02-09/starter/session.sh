#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m06l02-broker m06l02-db
#   m06l02-broker
#   m06l02-db
docker network rm m06l02-net
#   m06l02-net
