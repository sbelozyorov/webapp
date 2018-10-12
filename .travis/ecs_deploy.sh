#! /bin/bash
./bin/ecs-deploy -c $TASK_DEFINITION -n $SERVICE_NAME -i 434952379752.dkr.ecr.us-west-1.amazonaws.com/sbelozyorov/webapp:latest
