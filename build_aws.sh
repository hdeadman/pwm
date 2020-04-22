#!/bin/bash

mvn -DskipDockerPublish=false -DdockerImageTag=057602032570.dkr.ecr.us-east-1.amazonaws.com/pwm/pwm-webapp:latest package

