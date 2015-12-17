#!/bin/bash

cd ..

docker run --rm -v "$PWD/docker-jna-sample:/src" mnagaku/jnaerator:0.9.2 java -jar jnaerator.jar -genCPlusPlus /src/HelloWorld.h

docker build -t docker-jna-sample -f docker-jna-sample/Dockerfile .

