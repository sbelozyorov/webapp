#!/bin/sh
#wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
docker login --username $HEROKU_LOGIN --password=$HEROKU_API_KEY registry.heroku.com
docker build -t registry.heroku.com/$HEROKU_APP_NAME/web
docker push registry.heroku.com/$HEROKU_APP_NAME/web
