#!/bin/bash

docker run --rm -v ".:/src" mnagaku/jnaerator:0.9.2 java -jar jnaerator.jar -genCPlusPlus /src/HelloWorld.h

cd ..
docker build -t docker-jna-sample -f docker-jna-sample/Dockerfile .
