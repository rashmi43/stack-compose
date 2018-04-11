#!/usr/bin/env bash

DNS="${DNS:-asyncy.net}"
MINIMUM_MEMORY="2048"

start_docker_compose() {
  COUNT_IDS=$(docker-compose ps -q | wc -l)
  if [ "$COUNT_IDS" -gt 0 ]; then
    echo "Found running containers. Try running \`docker-compose down\` first."
    exit 1
  fi
  DNS="$DNS" docker-compose up -d
  echo "Waiting for services... This could take a minute."
  while true; do
    if curl -fs "http://$DNS/healthcheck"; then
      break
    else
      sleep 1
    fi
  done
  echo -e "Asyncy is running! Head on over to http://$DNS\\nExecute \`docker-compose down\` to bring down the environment"
}

if [ "$(uname)" == "Darwin" ]; then
  DOCKER_MEMORY=$(python -c 'import sys, json; print json.load(sys.stdin)["memoryMiB"]' < ~/Library/Group\ Containers/group.com.docker/settings.json)
  if [ "$DOCKER_MEMORY" -lt "$MINIMUM_MEMORY" ]; then
    echo -e "!!!! WARNING: MINIMUM MEMORY REQUIREMENTS NOT MET !!!!\\nAsyncy recommends allocating at least ${MINIMUM_MEMORY}MB to Docker\\nSee https://docs.docker.com/docker-for-mac/#advanced for details"
    read -r -p "Continue? [y/n] " REPLY
    if [[ "$REPLY" == "n" ]]; then
      exit 1
    fi
  fi
fi

start_docker_compose
