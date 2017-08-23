#!/usr/bin/env bash

cd ~/${APPLICATION_NAME}
docker-compose -f docker/docker-compose-production.yml up -d