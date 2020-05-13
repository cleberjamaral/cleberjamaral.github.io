---
description: Deploying a docker image from the hub
---

# deploying from the hub

Some [docker useful commands](https://gist.github.com/cleberjamaral/fd28876eba0065cf3d8f28e8a5b3a9c3) reference.

Examples assume there is an image at the following docker hub address [https://hub.docker.com/repository/docker/cleberjamaral/jacamo-rest-run](https://hub.docker.com/repository/docker/cleberjamaral/jacamo-rest-run) 

### Creating and running an image

* Building and assigning the tag `user/image_id`to the local image `$ sudo docker build -t user/image_id .`
* Check existing images `$ sudo docker images`
* Create a network `$ sudo docker network create network_name`
* Run a docker image `$ sudo docker run -ti user/image_id a_command`
  * Example `$ docker run -d -P -p 8888:8080 -ti cleberjamaral/jacamo-rest-run sh` 

### Pulling an image from a docker repository and running the terminal

* Pulling an image from docker hub `$ sudo docker pull user/image_id:tag`
  * Example `$ docker pull cleberjamaral/jacamo-rest-run:latest`
* Running an instance and opening the terminal `$ docker run -ti repository_id sh`
  * Example `$ docker run -ti cleberjamaral/jacamo-rest-run sh`
* Attaching to a running container `$ docker attach container_id`

### Removing an image

* Removing an image `$ sudo docker image rm image_id`
  * To force removing associated container `$ sudo docker image rm image_id -f`

