#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m03l05-broker
#   m03l05-broker
docker network rm m03l05-net
#   m03l05-net
