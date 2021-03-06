#!/usr/bin/env bash

# Usage: link_redis_config yaml config/redis.yml
function link_redis_config() {
  format=$1         # e.g. yaml
  target_file=${2:-config/redis.yml}    # e.g. config/redis.yml
  if [[ "${format}" != "yaml" ]]
  then
    echo "ERROR: 'link_redis_config ${format}' is not supported. Only supported format: yaml"
    exit 1
  fi
  if [[ "$REDIS_ENABLED" = '1' ]]
  then
    copy_job_file_to_package ${app_config}
  fi
}
