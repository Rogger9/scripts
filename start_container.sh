#!/usr/bin/env sh

CONTAINER="$1"

trap "docker stop $CONTAINER" 2

docker start $CONTAINER

[[ "$2" == nest ]] && npm run start:dev

exit 0
