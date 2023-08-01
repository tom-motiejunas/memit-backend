#!/bin/bash

cd ./.docker
docker-compose stop

if [[ "$OSTYPE" == "darwin"* ]]; then
  docker-sync stop -c ./docker-sync.yml
fi

