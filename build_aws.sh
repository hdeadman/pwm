#!/bin/bash

mvn -DskipDockerPublish=false -DdockerImageTag=057602032570.dkr.ecr.us-east-1.amazonaws.com/pwm/pwm-webapp:latest clean package
docker load < docker/target/pwm-docker-image*.tar
docker rm pwm 
docker run -d --name pwm 057602032570.dkr.ecr.us-east-1.amazonaws.com/pwm/pwm-webapp:latest
docker logs pwm
