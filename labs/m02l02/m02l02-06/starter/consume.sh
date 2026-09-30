#!/bin/sh
docker exec m02l02-broker rpk topic consume m02l02-keys \
  -f '%p %o %k %v\n' --num 6
docker rm -f m02l02-broker
docker network rm m02l02-net
