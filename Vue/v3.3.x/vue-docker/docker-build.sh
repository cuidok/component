#!/bin/sh

imageName="vue-docker"
imageVersion="1.0"

docker build -t ${imageName}:${imageVersion} .