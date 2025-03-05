#!/bin/bash
docker stop -t 300 nfs
docker rm nfs
docker pull ghcr.io/cole-titze/containers/nfs:latest
docker run -d --name nfs-server \
  --privileged \
  --network=host \
  -v /nfs_share:/nfs_share \
  nfs-server