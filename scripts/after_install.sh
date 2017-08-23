#!/usr/bin/env bash

docker ps -a -f "name=${APPLICATION_NAME}" | grep -q . \
  && docker stop ${APPLICATION_NAME} \
  && docker rm -fv ${APPLICATION_NAME} \
  || echo ${APPLICATION_NAME} Not Found

docker pull scjang/s-web:latest