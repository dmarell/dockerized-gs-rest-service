#!/usr/bin/env bash
docker build -t gs-rest-service .
docker rm -f gs-rest-service &> /dev/null || true
docker run \
    -d --name gs-rest-service \
    -p 10201:8080 \
    gs-rest-service