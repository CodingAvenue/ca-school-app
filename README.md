# ca-school-app

The deployed state of ca-school-reader and ca-school-renderer

## Deploying

#### Requirements

 - [Docker](https://www.docker.com/) installed
 - Account at [DockerHub](https://hub.docker.com/) 
 - ***Request permission to be added to Coding Avenue organization when you have an account at DockerHub.***

#### Installation

 - `docker login`
 - `docker pull codingavenue/ca-school-app`

#### Running

 - `docker run --rm -p 8093:8093 codingavenue/ca-school-app`
 - Visit http://<MACHINE-IP>:8093/courses/php-introduction
 - MACHINE-IP: ***If you are on linux it's `localhost` else execute `docker-machine ip` to get the IP.***

## Development

#### Requirements

 - [Docker](https://www.docker.com/) installed

#### Installation

 - `git clone --recursive git@github.com:CodingAvenue/ca-school-app.git`

#### Running

 - `./build.sh`
