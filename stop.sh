#!/bin/bash -e

# stop components
for component in "jupyter" "airflow" "elk"
do
pushd "./${component}" > /dev/null
docker-compose down
popd > /dev/null
done