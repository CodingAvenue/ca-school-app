#!/usr/bin/env bash

docker-compose -f backend.yml up -d

echo -ne "Waiting for services to fully start \n"
sleep 12

docker-compose -f frontend.yml up 
