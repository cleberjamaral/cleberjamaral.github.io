---
description: Deploying a docker image from the hub
---

# deploying from the hub

Examples assume there is an image at the following docker hub address [https://hub.docker.com/repository/docker/cleberjamaral/jacamo-rest-run](https://hub.docker.com/repository/docker/cleberjamaral/jacamo-rest-run) 

### Creating and running an image

* Building an image with a tag `$ sudo docker build -t user/image_id .`
* Check existing images `$ sudo docker images`
* Create a network `$ sudo docker network create network_name`
* Run a docker image `$ sudo docker run -ti --rm --net network_name --name host1 -v "$(pwd)":/a_folder user/image_id a_command`
  * Assuming 

### Pulling an image from a docker repository and running the terminal

* Pulling an image from dockerhub `$ sudo docker pull user/image_id:tag`
  * Example `$ docker pull cleberjamaral/jacamo-rest-run:latest`
* Running an instance and opening the terminal `$ docker run -ti repository_id sh`
  * Example `$ docker run -ti cleberjamaral/jacamo-rest-run sh`
* Attaching to a running container `$ docker attach container_id`

### Removing an image

* Removing an image `$ sudo docker image rm image_id`
  * To force removing associated container `$ sudo docker image rm image_id -f`

