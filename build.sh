#/usr/bin/env bash

NON_NIX=0

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" || "$OSTYPE" == "darwin"* ]]; then
	NON_NIX=1
fi

if [[ "$NON_NIX" == 1 ]]; then
	docker-machine create --driver virtualbox default
	docker-machine start
	eval $(docker-machine env --shell bash)
fi

docker build -t codingavenue/app .

docker run -p 8093:8093 --rm codingavenue/app

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
