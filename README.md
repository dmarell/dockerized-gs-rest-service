## Dockerized spring gs-rest-service

### Added files
  * Dockerfile
  * deploy.sh

### Non Linux users

Find IP address of docker host:

```
$ docker-machine ls
NAME      ACTIVE   URL          STATE     URL                         SWARM   DOCKER   ERRORS
default   *        virtualbox   Running   tcp://192.168.99.100:2376           v1.9.1
```

### Usage

```
$ mvn clean install
...
$ bash deploy.sh
...
$ curl http://192.168.99.100:8080/greeting
{"id":1,"content":"Hello, World!"}
```