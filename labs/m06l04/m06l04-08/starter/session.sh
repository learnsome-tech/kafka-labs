#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m06l04-broker
#   m06l04-broker
docker network rm m06l04-net
#   m06l04-net
