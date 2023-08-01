#!/bin/bash

cd ./.docker
docker-compose build

if [[ "$OSTYPE" == "darwin"* ]]; then
  docker volume create --name=memit-sync
  docker-compose up -d
  docker-sync start -c ./docker-sync.yml
else
  docker-compose up -d
fi
