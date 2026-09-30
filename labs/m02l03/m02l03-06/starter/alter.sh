#!/bin/sh
docker exec m02l03-broker rpk topic alter-config \
  m02l03-reliable --set min.insync.replicas=2
docker exec m02l03-broker rpk topic describe m02l03-reliable -p
docker rm -f m02l03-broker
docker network rm m02l03-net
