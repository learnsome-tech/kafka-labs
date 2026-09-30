#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m05l03-broker
#   m05l03-broker
docker network rm m05l03-net
#   m05l03-net
