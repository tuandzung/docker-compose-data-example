#!/bin/bash -e

# tao external network de ket noi cac component
if ! docker network inspect databox > /dev/null 2>&1; then
    docker network create databox
fi

# start components
for component in "jupyter" "airflow" "elk"
do
pushd "./${component}" > /dev/null
docker-compose up -d --build
popd > /dev/null
done