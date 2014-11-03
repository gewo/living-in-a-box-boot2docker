#!/usr/bin/env bash
set -e
set -x

TAG=$1

id=$(docker run -d $TAG /bin/true)
docker cp $id:/boot2docker.iso .
docker rm -f $id
