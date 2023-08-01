#!/usr/bin/env bash

# Make us independent from working directory
cd ./.docker
pushd `dirname $0` > /dev/null
popd > /dev/null

if [[ -n "$@" ]]; then
  docker-compose exec -T php bash -c "$@"
else
  docker-compose exec php bash
fi;

