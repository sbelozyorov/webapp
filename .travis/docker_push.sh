#! /bin/bash
pip install --user awscli
export PATH=$PATH:$HOME/.local/bin
eval $(aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION)
docker build -t sbelozyorov@webapp .
docker tag sbelozyorov/webapp:latest 434952379752.dkr.ecr.us-west-1.amazonaws.com/sbelozyorov/webapp:latest
docker push 434952379752.dkr.ecr.us-west-1.amazonaws.com/sbelozyorov/webapp:latest
