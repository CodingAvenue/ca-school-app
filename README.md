# ca-school-app

Use for testing/previewing the overall build of ca-school.

**Note:**
 - **CLONE recursively** i.e. `git clone --recursive git@github.com:CodingAvenue/ca-school-app.git`
 - **Login to DockerHub from command-line** - `docker login` 

## Deploying

#### Requirements

 - [Docker version 1.12.6, build 78d1802](https://www.docker.com/)
 - [docker-compose version 1.11.2, build f963d76f](https://docs.docker.com/compose/install/)

#### Running

```
// mac
docker-machine create --driver virtualbox default
docker-machine start
eval $(docker-machine env --shell bash)

// linux & mac
./build.sh
```

 - Visit http://**MACHINE-IP**:8093/ca-school-php-introduction/content/GettingStarted/GettingStarted.q.html
 - MACHINE-IP: ***If you are on linux it's `localhost` else execute `docker-machine ip` to get the IP.***
