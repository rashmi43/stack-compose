#!/usr/bin/env bash

export ASYNCY_USER_ID="$1"
export LOGDNA_INGESTION_KEY="$2"

usage() {
  echo "$0 asyncy-userid logdna-ingestion-key"
}

if [[ -z "$ASYNCY_USER_ID" ]] || [[ -z "$LOGDNA_INGESTION_KEY" ]]; then
  usage
  exit 1
fi

docker-compose pull
ASYNCY_USER_ID="${ASYNCY_USER_ID}" LOGDNA_INGESTION_KEY="${LOGDNA_INGESTION_KEY}" docker-compose up
