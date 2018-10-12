#! /bin/bash
docker login -u $DOCKER_USER -p $DOCKER_PASS
export TAG=`if [ "$TRAVIS_BRANCH" == "master" ]; then echo "latest"; else echo $TRAVIS_BRANCH
  ; fi`
export $DOCKER_USER/webapp
docker build -t $DOCKER_USER/webapp .
docker tag $DOCKER_USER/webapp $DOCKER_USER/javawebapp
docker push $DOCKER_USER/webapp
