#!/bin/sh

imageName="demo"
imageVersion="1.0"
containerName="demo"

docker run -d --name ${containerName} -p 8080:8080 ${imageName}:${imageVersion}