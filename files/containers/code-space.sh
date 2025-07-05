#!/bin/bash
docker stop code-space
docker rm code-space
docker pull ghcr.io/cole-titze/containers/code-space:latest
docker run --name code-space -p 8082:8082 -v "var/code-space:/code-space" --restart=always -d ghcr.io/cole-titze/containers/code-space:latest