#! /bin/bash

set -e

APP="${1:?Provide the Heroku app name to deploy/release to}"

docker build -t registry.heroku.com/${APP}/web .
docker push registry.heroku.com/${APP}/web

heroku container:release web -a ${APP}