#!/usr/bin/env bash
docker build -t gs-rest-service-10201 .
docker rm -f gs-rest-service-10201 &> /dev/null || true
docker run \
   -d --name gs-rest-service-10201 \
   -p 10201:8080 \
   gs-rest-service-10201