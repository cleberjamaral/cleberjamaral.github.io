---
description: Deploying a docker image from the hub
---

# deploying from the hub

### Creating and running an image

* Building an image with a tag `$ sudo docker build -t a_tag .`
* Check existing images `$ sudo docker images`
* Create a network `$ sudo docker network create network_name`
* Run a docker image `$ sudo docker run -ti --rm --net network_name --name host1 -v "$(pwd)":/a_folder a_repository a_command`

### Pulling an image from a docker repository and running the terminal

* Pulling an image from dockerhub `$ sudo docker pull user/repository:tag`
  * Assuming there is an image at the following docker hub address [https://hub.docker.com/repository/docker/cleberjamaral/jacamo-rest-run](https://hub.docker.com/repository/docker/cleberjamaral/jacamo-rest-run) 

    `$ docker pull cleberjamaral/jacamo-rest-run:latest`
* Running an instance and opening the terminal `$ docker run -ti repository_id sh`
  * Assuming there is a repository called `cleberjamaral/jacamo-rest-run` when running `docker images` command`$ docker run -ti cleberjamaral/jacamo-rest-run sh`

### Removing an image

* Removing an image `$ sudo docker image rm image_id`
  * To force removing associated container `$ sudo docker image rm image_id -f`

