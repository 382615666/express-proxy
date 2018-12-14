#!/bin/bash

repository=${PWD##*/}

server="registry.cn-shenzhen.aliyuncs.com/gana/"

cd /usr/src/app/$repository

git pull

docker build -t $server$repository:$1 .

docker tag $server$repository:$1 $server$repository:latest

docker push $server$repository:latest