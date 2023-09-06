#!/bin/sh

imageName="vue-docker"
imageVersion="1.0"
containerName="vue-docker"

docker run -d --name ${containerName} -p 8080:8080 ${imageName}:${imageVersion}