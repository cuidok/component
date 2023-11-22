#!/bin/sh

imageName="demo"
imageVersion="1.0"

docker build -t ${imageName}:${imageVersion} .