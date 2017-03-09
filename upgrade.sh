#/usr/bin/env bash

docker pull codingavenue/ca-school-sandbox:latest
docker pull codingavenue/ca-school-platform:latest
docker pull codingavenue/ca-school-reader:latest
docker pull codingavenue/ca-school-validator:latest

cd renderer; git pull origin master;
cd -

cd courses/ca-school-php-introduction; git pull origin getting-started;
cd -

git add . -A
git commit -m "Upgrade!"
git push
