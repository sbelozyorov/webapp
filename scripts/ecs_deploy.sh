#!/bin/bash
pip install --user awscli
export PATH=$PATH:$HOME/.local/bin

# Install jq
add-apt-repository ppa:eugenesan/ppa
apt-get update
apt-get install jq -y

# Download ecs-deploy script
curl https://raw.githubusercontent.com/silinternational/ecs-deploy/master/ecs-deploy | sudo tee /usr/bin/ecs-deploy
sudo chmod +x /usr/bin/ecs-deploy

# Push image to AWS ECR
eval $(aws ecr get-login --no-include-email --region us-west-1)
docker build -t sbelozyorov@webapp
docker tag sbelozyorov/webapp:latest 434952379752.dkr.ecr.us-west-1.amazonaws.com/sbelozyorov/webapp:latest
docker push 434952379752.dkr.ecr.us-west-1.amazonaws.com/sbelozyorov/webapp:latest

# Deploy application
ecs-deploy -c $CLUSTER_NAME -n $SERVICE_NAME -i 434952379752.dkr.ecr.us-west-1.amazonaws.com/sbelozyorov/webapp:latest
